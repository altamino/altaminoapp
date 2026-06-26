.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;
.super Ljava/lang/Object;
.source "GLVideoView.java"

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

    .line 368
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "GLVideoView"

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$200(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$400(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$500(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v4}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$600(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 376
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$200(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    if-eq v1, v2, :cond_0

    .line 386
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->release()V

    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->prepareAsync()V

    const-string/jumbo v1, "video opened"

    .line 396
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "something went wrong"

    .line 407
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "video open failed"

    .line 398
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$200(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->val$currentPlayer:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    if-ne v0, v1, :cond_1

    .line 404
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$3;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->exceptionHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method
