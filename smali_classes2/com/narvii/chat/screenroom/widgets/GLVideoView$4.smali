.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;
.super Ljava/lang/Object;
.source "GLVideoView.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;


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

    .line 446
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$702(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 449
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$802(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 450
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$900(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$900(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)V

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 454
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 455
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestLayout()V

    :cond_1
    return-void
.end method
