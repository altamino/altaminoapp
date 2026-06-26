.class Lcom/narvii/media/MediaPlayerManager$4$1;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPlayerManager$4;->onLocalReady(Ljava/lang/String;Ljava/io/FileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/MediaPlayerManager$4;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPlayerManager$4;Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iput-object p2, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 316
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-virtual {p1}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode()V

    .line 318
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    .line 321
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$100(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v2, v1, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iget-object v3, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object v3, v3, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v3}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-interface {p1, v2, v1, v3}, Lcom/narvii/media/MediaStatusChangeListener;->onProgressChange(Ljava/lang/String;II)V

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v1}, Lcom/narvii/media/MediaPlayerManager;->access$400(Lcom/narvii/media/MediaPlayerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v1}, Lcom/narvii/media/MediaPlayerManager;->access$400(Lcom/narvii/media/MediaPlayerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    .line 331
    sget-object v1, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    invoke-interface {p1, v1}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 333
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 334
    iput-object v1, p1, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    .line 335
    iget-boolean v1, p1, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    if-eqz v1, :cond_3

    .line 336
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$300(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager;->headsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v1, p1, Lcom/narvii/media/MediaPlayerManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 338
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iput-boolean v0, p1, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    .line 341
    :cond_3
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object v0, v0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v0, v0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$500(Lcom/narvii/media/MediaPlayerManager;)V

    return-void
.end method
