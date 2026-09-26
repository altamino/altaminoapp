.class final Landroidx/media3/exoplayer/StreamVolumeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/StreamVolumeManager$Listener;,
        Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamVolumeManager"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final audioManager:Landroid/media/AudioManager;

.field private final eventHandler:Landroid/os/Handler;

.field private final listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

.field private muted:Z

.field private receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private streamType:I

.field private volume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/StreamVolumeManager$Listener;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->eventHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iput-object p3, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

    .line 14
    .line 15
    const-string p2, "audio"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Landroid/media/AudioManager;

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    check-cast p2, Landroid/media/AudioManager;

    .line 28
    .line 29
    iput-object p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    .line 30
    const/4 p3, 0x3

    .line 31
    .line 32
    iput p3, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 33
    .line 34
    .line 35
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/StreamVolumeManager;->f(Landroid/media/AudioManager;I)I

    .line 36
    move-result p3

    .line 37
    .line 38
    iput p3, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    .line 39
    .line 40
    iget p3, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 41
    .line 42
    .line 43
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/StreamVolumeManager;->e(Landroid/media/AudioManager;I)Z

    .line 44
    move-result p2

    .line 45
    .line 46
    iput-boolean p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->muted:Z

    .line 47
    .line 48
    new-instance p2, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    .line 49
    const/4 p3, 0x0

    .line 50
    .line 51
    .line 52
    invoke-direct {p2, p0, p3}, Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;-><init>(Landroidx/media3/exoplayer/StreamVolumeManager;Landroidx/media3/exoplayer/StreamVolumeManager$1;)V

    .line 53
    .line 54
    new-instance p3, Landroid/content/IntentFilter;

    .line 55
    .line 56
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 57
    .line 58
    .line 59
    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    .line 64
    iput-object p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    .line 68
    const-string p2, "StreamVolumeManager"

    .line 69
    .line 70
    const-string p3, "Error registering stream volume receiver"

    .line 71
    .line 72
    .line 73
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :goto_0
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->eventHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/StreamVolumeManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->i()V

    .line 4
    return-void
.end method

.method private static e(Landroid/media/AudioManager;I)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x17

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager;->f(Landroid/media/AudioManager;I)I

    .line 15
    move-result p0

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method private static f(Landroid/media/AudioManager;I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v2, "Could not retrieve stream volume for stream type "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const-string v2, "StreamVolumeManager"

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method private i()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/StreamVolumeManager;->f(Landroid/media/AudioManager;I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    .line 11
    .line 12
    iget v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/StreamVolumeManager;->e(Landroid/media/AudioManager;I)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    iget v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    .line 19
    .line 20
    if-ne v2, v0, :cond_0

    .line 21
    .line 22
    iget-boolean v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->muted:Z

    .line 23
    .line 24
    if-eq v2, v1, :cond_1

    .line 25
    .line 26
    :cond_0
    iput v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->volume:I

    .line 27
    .line 28
    iput-boolean v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->muted:Z

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, v0, v1}, Landroidx/media3/exoplayer/StreamVolumeManager$Listener;->s(IZ)V

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public c()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public d()I
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    .line 9
    .line 10
    iget v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/i2;->a(Landroid/media/AudioManager;I)I

    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public g()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    .line 13
    const-string v1, "StreamVolumeManager"

    .line 14
    .line 15
    const-string v2, "Error unregistering stream volume receiver"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Landroidx/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    .line 22
    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->i()V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->listener:Landroidx/media3/exoplayer/StreamVolumeManager$Listener;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/StreamVolumeManager$Listener;->p(I)V

    .line 16
    return-void
.end method
