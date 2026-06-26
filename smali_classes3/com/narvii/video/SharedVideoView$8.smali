.class Lcom/narvii/video/SharedVideoView$8;
.super Ljava/lang/Object;
.source "SharedVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 858
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 861
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1, p3}, Lcom/narvii/video/SharedVideoView;->access$502(Lcom/narvii/video/SharedVideoView;I)I

    .line 862
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1, p4}, Lcom/narvii/video/SharedVideoView;->access$602(Lcom/narvii/video/SharedVideoView;I)I

    .line 863
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$400(Lcom/narvii/video/SharedVideoView;)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 864
    :goto_0
    iget-object v1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v1}, Lcom/narvii/video/SharedVideoView;->access$000(Lcom/narvii/video/SharedVideoView;)I

    move-result v1

    if-ne v1, p3, :cond_1

    iget-object p3, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p3}, Lcom/narvii/video/SharedVideoView;->access$100(Lcom/narvii/video/SharedVideoView;)I

    move-result p3

    if-ne p3, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 865
    :goto_1
    iget-object p3, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p3}, Lcom/narvii/video/SharedVideoView;->access$1300(Lcom/narvii/video/SharedVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 866
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1500(Lcom/narvii/video/SharedVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 867
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1500(Lcom/narvii/video/SharedVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/video/SharedVideoView;->seekTo(I)V

    .line 869
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-virtual {p1}, Lcom/narvii/video/SharedVideoView;->start()V

    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {v0, p1}, Lcom/narvii/video/SharedVideoView;->access$202(Lcom/narvii/video/SharedVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 875
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$2400(Lcom/narvii/video/SharedVideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 880
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/video/SharedVideoView;->access$202(Lcom/narvii/video/SharedVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 881
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/video/SharedVideoView;->access$2500(Lcom/narvii/video/SharedVideoView;Z)V

    .line 882
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1}, Lcom/narvii/video/SharedVideoView;->access$1400(Lcom/narvii/video/SharedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 883
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$8;->this$0:Lcom/narvii/video/SharedVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/video/SharedVideoView;->access$2600(Lcom/narvii/video/SharedVideoView;Z)V

    return-void
.end method
