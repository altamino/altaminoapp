.class public Lcom/narvii/media/MediaPlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field audioHelper:Lcom/narvii/chat/audio/AudioHelper;

.field public audioManager:Landroid/media/AudioManager;

.field currentUrl:Ljava/lang/String;

.field headsetReceiver:Landroid/content/BroadcastReceiver;

.field isPlaying:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field mediaLoader:Lcom/narvii/media/MediaLoader;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private final pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field receiverRegistered:Z

.field public sensor:Landroid/hardware/Sensor;

.field sensorEventListener:Landroid/hardware/SensorEventListener;

.field public sensorManager:Landroid/hardware/SensorManager;

.field statusChangeListenerWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/media/MediaStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field updateProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/media/MediaPlayerManager$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPlayerManager$1;-><init>(Lcom/narvii/media/MediaPlayerManager;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->headsetReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/media/MediaPlayerManager$2;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPlayerManager$2;-><init>(Lcom/narvii/media/MediaPlayerManager;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/media/MediaPlayerManager$3;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPlayerManager$3;-><init>(Lcom/narvii/media/MediaPlayerManager;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    const-string v0, "mediaLoader"

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/media/MediaLoader;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->mediaLoader:Lcom/narvii/media/MediaLoader;

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    const-string v1, "sensor"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    check-cast v0, Landroid/hardware/SensorManager;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->sensor:Landroid/hardware/Sensor;

    .line 69
    .line 70
    new-instance v0, Lcom/narvii/chat/audio/AudioHelper;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p1}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 74
    .line 75
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 76
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    :cond_0
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/MediaPlayerManager;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/media/MediaPlayerManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/media/MediaPlayerManager;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->abandonAudioFocus()V

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->getStatusChangeListener()Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/media/MediaPlayerManager;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPlayerManager;->isCurrentUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getStatusChangeListener()Lcom/narvii/media/MediaStatusChangeListener;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/media/MediaStatusChangeListener;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/media/MediaStatusChangeListener;->getMediaUrl()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    return-object v0

    .line 28
    :cond_1
    return-object v1
.end method

.method static bridge synthetic h(Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->onPlayError()V

    return-void
.end method

.method private isCurrentUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private isUrlPlaying(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPlayerManager;->isCurrentUrl(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method private onPlayError()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    :catch_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f120726

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode()V

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->getStatusChangeListener()Lcom/narvii/media/MediaStatusChangeListener;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-object v1, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 39
    .line 40
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    const/4 v0, 0x0

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->headsetReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 73
    .line 74
    iput-boolean v2, p0, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->abandonAudioFocus()V

    .line 78
    return-void
.end method

.method private pauseMediaPlayer(Z)V
    .locals 5

    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 4
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->getStatusChangeListener()Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v2, Lcom/narvii/media/MediaStatus;

    iget-object v3, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    invoke-interface {v1, v2}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    :cond_2
    iget-boolean v1, p0, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager;->headsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 8
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v0, p0, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, v0}, Lcom/narvii/media/MediaPlayerManager;->getMediaStatus(Ljava/lang/String;)Lcom/narvii/media/MediaStatus;

    move-result-object v0

    .line 10
    iget v0, v0, Lcom/narvii/media/MediaStatus;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->getStatusChangeListener()Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    sget-object v1, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    invoke-interface {v0, v1}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 13
    :cond_4
    :goto_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_5

    .line 14
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->abandonAudioFocus()V

    :cond_5
    return-void
.end method


# virtual methods
.method public getMediaStatus(Ljava/lang/String;)Lcom/narvii/media/MediaStatus;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPlayerManager;->isCurrentUrl(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/media/MediaStatus;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v1, v0}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_1
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->mediaLoader:Lcom/narvii/media/MediaLoader;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/narvii/media/MediaLoader;->isDownloading(Ljava/lang/String;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    sget-object p1, Lcom/narvii/media/MediaStatus;->DOWNLOADING:Lcom/narvii/media/MediaStatus;

    .line 51
    return-object p1

    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/media/MediaStatus;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    check-cast p1, Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result p1

    .line 74
    const/4 v1, 0x2

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1, p1}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    .line 78
    return-object v0

    .line 79
    .line 80
    :cond_3
    sget-object p1, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    .line 81
    return-object p1
.end method

.method public pauseMediaPlayer()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/media/MediaPlayerManager;->pauseMediaPlayer(Z)V

    return-void
.end method

.method public playAudio(Ljava/lang/String;ILcom/narvii/media/MediaStatusChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/audio/AudioHelper;->showAVChatOnToast()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPlayerManager;->isUrlPlaying(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/narvii/media/MediaPlayerManager;->pauseMediaPlayer(Z)V

    .line 20
    .line 21
    :cond_1
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPlayerManager;->isUrlPlaying(Ljava/lang/String;)Z

    .line 32
    move-result p3

    .line 33
    .line 34
    if-eqz p3, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 45
    return-void

    .line 46
    .line 47
    :cond_2
    iget-object p3, p0, Lcom/narvii/media/MediaPlayerManager;->mediaLoader:Lcom/narvii/media/MediaLoader;

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/media/MediaPlayerManager$4;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0, p2}, Lcom/narvii/media/MediaPlayerManager$4;-><init>(Lcom/narvii/media/MediaPlayerManager;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p1, v0}, Lcom/narvii/media/MediaLoader;->loadMedia(Ljava/lang/String;Lcom/narvii/media/MediaLoader$OnMediaLoadListener;)V

    .line 56
    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/media/MediaPlayerManager;->pauseMediaPlayer()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 14
    :cond_0
    return-void
.end method

.method public resetSpeakMode()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode(Z)V

    return-void
.end method

.method public resetSpeakMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 4
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 5
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 7
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 8
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public tryListenMediaStatusChange(Lcom/narvii/media/MediaStatusChangeListener;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-interface {p1}, Lcom/narvii/media/MediaStatusChangeListener;->getMediaUrl()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 33
    :cond_2
    return-void
.end method
