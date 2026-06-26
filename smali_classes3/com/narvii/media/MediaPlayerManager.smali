.class public Lcom/narvii/media/MediaPlayerManager;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"


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

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance v0, Lcom/narvii/media/MediaPlayerManager$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPlayerManager$1;-><init>(Lcom/narvii/media/MediaPlayerManager;)V

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->headsetReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v0, Lcom/narvii/media/MediaPlayerManager$2;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPlayerManager$2;-><init>(Lcom/narvii/media/MediaPlayerManager;)V

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 107
    new-instance v0, Lcom/narvii/media/MediaPlayerManager$3;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPlayerManager$3;-><init>(Lcom/narvii/media/MediaPlayerManager;)V

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 85
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "mediaLoader"

    .line 86
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaLoader;

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->mediaLoader:Lcom/narvii/media/MediaLoader;

    .line 87
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 88
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->sensor:Landroid/hardware/Sensor;

    .line 89
    new-instance v0, Lcom/narvii/chat/audio/AudioHelper;

    invoke-direct {v0, p1}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 268
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/media/MediaPlayerManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->getStatusChangeListener()Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/media/MediaPlayerManager;Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPlayerManager;->isCurrentUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/media/MediaPlayerManager;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/media/MediaPlayerManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->abandonAudioFocus()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->onPlayError()V

    return-void
.end method

.method private getStatusChangeListener()Lcom/narvii/media/MediaStatusChangeListener;
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaStatusChangeListener;

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v0}, Lcom/narvii/media/MediaStatusChangeListener;->getMediaUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private isCurrentUrl(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isUrlPlaying(Ljava/lang/String;)Z
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPlayerManager;->isCurrentUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onPlayError()V
    .locals 3

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0679

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 248
    invoke-virtual {p0}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode()V

    .line 249
    iput-boolean v2, p0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    .line 250
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->getStatusChangeListener()Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v1, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    invoke-interface {v0, v1}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 254
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 256
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    .line 257
    iget-boolean v0, p0, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->headsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 260
    iput-boolean v2, p0, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->abandonAudioFocus()V

    return-void
.end method

.method private pauseMediaPlayer(Z)V
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    if-eqz v1, :cond_3

    .line 177
    invoke-virtual {p0}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode()V

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    .line 179
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 180
    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->getStatusChangeListener()Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 185
    new-instance v2, Lcom/narvii/media/MediaStatus;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    invoke-interface {v1, v2}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 187
    :cond_2
    iget-boolean v1, p0, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    if-eqz v1, :cond_4

    .line 188
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager;->headsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 190
    iput-boolean v0, p0, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0, v0}, Lcom/narvii/media/MediaPlayerManager;->getMediaStatus(Ljava/lang/String;)Lcom/narvii/media/MediaStatus;

    move-result-object v0

    .line 194
    iget v0, v0, Lcom/narvii/media/MediaStatus;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 195
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->getStatusChangeListener()Lcom/narvii/media/MediaStatusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 197
    sget-object v1, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    invoke-interface {v0, v1}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 202
    :cond_4
    :goto_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 204
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_5

    .line 206
    invoke-direct {p0}, Lcom/narvii/media/MediaPlayerManager;->abandonAudioFocus()V

    :cond_5
    return-void
.end method


# virtual methods
.method public getMediaStatus(Ljava/lang/String;)Lcom/narvii/media/MediaStatus;
    .locals 3

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object p1, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    return-object p1

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPlayerManager;->isCurrentUrl(Ljava/lang/String;)Z

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 131
    new-instance p1, Lcom/narvii/media/MediaStatus;

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->mediaLoader:Lcom/narvii/media/MediaLoader;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/narvii/media/MediaLoader;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    sget-object p1, Lcom/narvii/media/MediaStatus;->DOWNLOADING:Lcom/narvii/media/MediaStatus;

    return-object p1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    new-instance v0, Lcom/narvii/media/MediaStatus;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager;->pausingMediaMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    return-object v0

    .line 140
    :cond_3
    sget-object p1, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    return-object p1
.end method

.method public pauseMediaPlayer()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0}, Lcom/narvii/media/MediaPlayerManager;->pauseMediaPlayer(Z)V

    return-void
.end method

.method public playAudio(Ljava/lang/String;ILcom/narvii/media/MediaStatusChangeListener;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/audio/AudioHelper;->showAVChatOnToast()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPlayerManager;->isUrlPlaying(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 285
    invoke-direct {p0, v0}, Lcom/narvii/media/MediaPlayerManager;->pauseMediaPlayer(Z)V

    .line 287
    :cond_1
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 288
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    .line 289
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPlayerManager;->isUrlPlaying(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 290
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 291
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    .line 294
    :cond_2
    iget-object p3, p0, Lcom/narvii/media/MediaPlayerManager;->mediaLoader:Lcom/narvii/media/MediaLoader;

    new-instance v0, Lcom/narvii/media/MediaPlayerManager$4;

    invoke-direct {v0, p0, p2}, Lcom/narvii/media/MediaPlayerManager$4;-><init>(Lcom/narvii/media/MediaPlayerManager;I)V

    invoke-virtual {p3, p1, v0}, Lcom/narvii/media/MediaLoader;->loadMedia(Ljava/lang/String;Lcom/narvii/media/MediaLoader$OnMediaLoadListener;)V

    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/narvii/media/MediaPlayerManager;->pauseMediaPlayer()V

    .line 162
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public resetSpeakMode()V
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode(Z)V

    return-void
.end method

.method public resetSpeakMode(Z)V
    .locals 2

    .line 215
    iget-boolean v0, p0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 224
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 225
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 228
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 231
    :cond_3
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 232
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 236
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public tryListenMediaStatusChange(Lcom/narvii/media/MediaStatusChangeListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    .line 100
    :cond_1
    invoke-interface {p1}, Lcom/narvii/media/MediaStatusChangeListener;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    .line 103
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
