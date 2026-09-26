.class public final Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;,
        Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;,
        Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;,
        Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;,
        Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Api23;
    }
.end annotation


# instance fields
.field audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioDeviceCallback:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final externalSurroundSoundSettingObserver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final listener:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;)V
    .locals 3

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
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/media3/common/util/Util;->y()Landroid/os/Handler;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 24
    .line 25
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 26
    .line 27
    const/16 v1, 0x17

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    if-lt v0, v1, :cond_0

    .line 31
    .line 32
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;-><init>(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$1;)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v1, v2

    .line 38
    .line 39
    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioDeviceCallback:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    .line 40
    .line 41
    const/16 v1, 0x15

    .line 42
    .line 43
    if-lt v0, v1, :cond_1

    .line 44
    .line 45
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0, v2}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$1;)V

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v0, v2

    .line 51
    .line 52
    :goto_1
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->g()Landroid/net/Uri;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    new-instance v2, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, p0, p2, p1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;-><init>(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 68
    .line 69
    :cond_2
    iput-object v2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 70
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroidx/media3/exoplayer/audio/AudioCapabilities;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->c(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    .line 4
    return-void
.end method

.method static synthetic b(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method private c(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;->a(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public d()Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->a()V

    .line 24
    .line 25
    :cond_1
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 26
    .line 27
    const/16 v1, 0x17

    .line 28
    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioDeviceCallback:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0, v2}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Api23;->a(Landroid/content/Context;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    const/4 v1, 0x0

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    .line 48
    .line 49
    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 55
    .line 56
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    .line 58
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->d(Landroid/content/Context;Landroid/content/Intent;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 71
    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 9
    .line 10
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x17

    .line 13
    .line 14
    if-lt v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioDeviceCallback:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Api23;->b(Landroid/content/Context;Landroid/media/AudioDeviceCallback;)V

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->b()V

    .line 40
    :cond_3
    const/4 v0, 0x0

    .line 41
    .line 42
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 43
    return-void
.end method
