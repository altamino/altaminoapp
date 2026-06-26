.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;
.super Ljava/lang/Object;
.source "GLVideoView.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;


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

    .line 460
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 4

    .line 462
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$002(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 466
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1202(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1102(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1002(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)Z

    .line 468
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1300(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1300(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$200(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;->onPrepared(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->setEnabled(Z)V

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$702(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 475
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$802(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 477
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1500(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 479
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->seekTo(I)V

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 483
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 484
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1600(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 488
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$100(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 489
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    .line 490
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 491
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show()V

    goto :goto_0

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 494
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_6

    .line 495
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 497
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show(I)V

    goto :goto_0

    .line 504
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$100(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 505
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    .line 506
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 507
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show()V

    :cond_6
    :goto_0
    return-void
.end method
