.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getVideoWidth()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->D(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getVideoHeight()I

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->C(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->k(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->k(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)V

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->r(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->q(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 49
    move-result p1

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->r(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 63
    move-result p2

    .line 64
    .line 65
    iget-object p3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 66
    .line 67
    .line 68
    invoke-static {p3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->q(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 69
    move-result p3

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$4;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 78
    :cond_1
    return-void
.end method
