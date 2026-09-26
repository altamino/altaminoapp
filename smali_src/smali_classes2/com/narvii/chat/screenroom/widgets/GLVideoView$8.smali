.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 2

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, "Error: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, ","

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string v0, "GLVideoView"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 33
    const/4 v0, -0x1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->x(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->B(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->hide()V

    .line 59
    .line 60
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->h(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 64
    move-result-object p1

    .line 65
    const/4 v0, 0x1

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->h(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->f(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v1, p2, p3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;->onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    .line 83
    move-result p1

    .line 84
    .line 85
    if-eqz p1, :cond_1

    .line 86
    return v0

    .line 87
    .line 88
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->b(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Landroid/content/Context;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->g(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->g(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$8;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 120
    .line 121
    .line 122
    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->f(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 123
    move-result-object p2

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;->onCompletion(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 127
    :cond_2
    return v0
.end method
