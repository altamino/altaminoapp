.class Lnet/protyposis/android/mediaplayer/VideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/protyposis/android/mediaplayer/VideoView;->openVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/protyposis/android/mediaplayer/VideoView;

.field final synthetic val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

.field final synthetic val$exceptionHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lnet/protyposis/android/mediaplayer/VideoView;Lnet/protyposis/android/mediaplayer/MediaPlayer;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    .line 4
    iput-object p2, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 5
    .line 6
    iput-object p3, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->val$exceptionHandler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lnet/protyposis/android/mediaplayer/VideoView;->access$002(Lnet/protyposis/android/mediaplayer/VideoView;I)I

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 9
    .line 10
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lnet/protyposis/android/mediaplayer/VideoView;->access$400(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaSource;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/VideoView;->access$500(Lnet/protyposis/android/mediaplayer/VideoView;)I

    .line 20
    move-result v2

    .line 21
    .line 22
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/VideoView;->access$600(Lnet/protyposis/android/mediaplayer/VideoView;)I

    .line 26
    move-result v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setDataSource(Lnet/protyposis/android/mediaplayer/MediaSource;II)V

    .line 30
    .line 31
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/VideoView;->access$200(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 38
    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->release()V

    .line 43
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->prepareAsync()V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lnet/protyposis/android/mediaplayer/VideoView;->access$700()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const-string v1, "video opened"

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_2

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-static {}, Lnet/protyposis/android/mediaplayer/VideoView;->access$700()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    const-string v2, "something went wrong"

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    goto :goto_2

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-static {}, Lnet/protyposis/android/mediaplayer/VideoView;->access$700()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    const-string v2, "video open failed"

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/VideoView;->access$200(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 88
    .line 89
    if-ne v0, v1, :cond_1

    .line 90
    .line 91
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$2;->val$exceptionHandler:Landroid/os/Handler;

    .line 92
    const/4 v1, 0x0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    :cond_1
    :goto_2
    return-void
.end method
