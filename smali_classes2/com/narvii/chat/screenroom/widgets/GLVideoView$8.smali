.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;
.super Ljava/lang/Object;
.source "GLVideoView.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;


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

    .line 536
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 2

    .line 538
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GLVideoView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$002(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 540
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$102(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 541
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 542
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->hide()V

    .line 546
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$2000(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 547
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$2000(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$200(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    move-result-object v1

    invoke-interface {p1, v1, p2, p3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;->onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 557
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 558
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/16 p1, 0xc8

    .line 567
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 568
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$200(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;->onCompletion(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    :cond_2
    return v0
.end method
