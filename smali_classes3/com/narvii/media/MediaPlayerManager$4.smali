.class Lcom/narvii/media/MediaPlayerManager$4;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"

# interfaces
.implements Lcom/narvii/media/MediaLoader$OnMediaLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPlayerManager;->playAudio(Ljava/lang/String;ILcom/narvii/media/MediaStatusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPlayerManager;

.field final synthetic val$seekTime:I


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPlayerManager;I)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iput p2, p0, Lcom/narvii/media/MediaPlayerManager$4;->val$seekTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v0, p1}, Lcom/narvii/media/MediaPlayerManager;->access$200(Lcom/narvii/media/MediaPlayerManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$300(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0679

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 416
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$100(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 418
    sget-object v0, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    invoke-interface {p1, v0}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    :cond_0
    return-void
.end method

.method public onLoading(Ljava/lang/String;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v0, p1}, Lcom/narvii/media/MediaPlayerManager;->access$200(Lcom/narvii/media/MediaPlayerManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 405
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$100(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 407
    sget-object v0, Lcom/narvii/media/MediaStatus;->DOWNLOADING:Lcom/narvii/media/MediaStatus;

    invoke-interface {p1, v0}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    :cond_0
    return-void
.end method

.method public onLocalReady(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->access$100(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v0, p1}, Lcom/narvii/media/MediaPlayerManager;->access$200(Lcom/narvii/media/MediaPlayerManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/narvii/media/MediaPlayerManager;->access$002(Lcom/narvii/media/MediaPlayerManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    .line 310
    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->access$300(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, v0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 312
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v2, Lcom/narvii/media/MediaPlayerManager$4$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/media/MediaPlayerManager$4$1;-><init>(Lcom/narvii/media/MediaPlayerManager$4;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 347
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    new-instance v0, Lcom/narvii/media/MediaPlayerManager$4$2;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPlayerManager$4$2;-><init>(Lcom/narvii/media/MediaPlayerManager$4;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 356
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    new-instance v0, Lcom/narvii/media/MediaPlayerManager$4$3;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPlayerManager$4$3;-><init>(Lcom/narvii/media/MediaPlayerManager$4;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 365
    :try_start_0
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    .line 367
    :try_start_1
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    :catch_0
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 373
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 374
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 375
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget p2, p0, Lcom/narvii/media/MediaPlayerManager$4;->val$seekTime:I

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 377
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    if-nez p1, :cond_3

    .line 378
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 379
    iget-object p2, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object p2, p2, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    int-to-float p1, p1

    int-to-float p2, p2

    const v2, 0x3e4ccccd    # 0.2f

    mul-float p2, p2, v2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    .line 381
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$300(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0782

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 385
    :cond_3
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 386
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    .line 387
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$300(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager;->headsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v2, v2, Lcom/narvii/media/MediaPlayerManager;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v1, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 390
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iput-boolean p2, p1, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    .line 391
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 392
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$100(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 394
    new-instance v0, Lcom/narvii/media/MediaStatus;

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {v1}, Lcom/narvii/media/MediaPlayerManager;->access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    invoke-interface {p1, v0}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 397
    :catch_1
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->access$600(Lcom/narvii/media/MediaPlayerManager;)V

    :cond_4
    :goto_1
    return-void
.end method
