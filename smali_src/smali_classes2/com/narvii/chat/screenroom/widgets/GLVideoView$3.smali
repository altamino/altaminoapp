.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/GLVideoView;->openVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

.field final synthetic val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "GLVideoView"

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->f(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->b(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Landroid/content/Context;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 17
    .line 18
    .line 19
    invoke-static {v3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->p(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Landroid/net/Uri;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 23
    .line 24
    .line 25
    invoke-static {v4}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->d(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Ljava/util/Map;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v3, v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->f(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 38
    .line 39
    if-eq v1, v2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->release()V

    .line 43
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception v1

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->prepareAsync()V

    .line 51
    .line 52
    const-string v1, "video opened"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :goto_0
    const-string v2, "something went wrong"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :goto_1
    const-string v2, "video open failed"

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->f(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 76
    .line 77
    if-ne v0, v1, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->exceptionHandler:Landroid/os/Handler;

    .line 82
    const/4 v1, 0x0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    :cond_1
    :goto_2
    return-void
.end method
