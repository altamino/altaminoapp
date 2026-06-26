.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;
.super Ljava/lang/Object;
.source "GLVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/GLVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 640
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1, p3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1602(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 641
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1, p4}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1702(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 642
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$100(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 643
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v1

    if-ne v1, p3, :cond_1

    iget-object p3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result p3

    if-ne p3, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 644
    :goto_1
    iget-object p3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$200(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 645
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1500(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 646
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1500(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->seekTo(I)V

    .line 648
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$2202(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 654
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$2300(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 659
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$2202(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 660
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->hide()V

    .line 661
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$10;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$2400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V

    return-void
.end method
