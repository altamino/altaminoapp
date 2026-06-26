.class Lcom/narvii/media/MediaPlayerManager$3;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPlayerManager;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v1, v0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-boolean v1, v0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    if-eqz v1, :cond_0

    .line 111
    iget-object v0, v0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaStatusChangeListener;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lcom/narvii/media/MediaStatusChangeListener;->getMediaUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v2, v2, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v2, v1, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v3, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v3}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-interface {v0, v2, v1, v3}, Lcom/narvii/media/MediaStatusChangeListener;->onProgressChange(Ljava/lang/String;II)V

    .line 116
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v0, v0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
