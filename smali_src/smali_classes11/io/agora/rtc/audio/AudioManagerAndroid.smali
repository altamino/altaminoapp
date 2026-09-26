.class Lio/agora/rtc/audio/AudioManagerAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_FRAMES_PER_BUFFER:I = 0x100

.field private static final DEFAULT_SAMPLING_RATE:I = 0xac44


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private mAudioLowLatencyOutputFrameSize:I

.field private mAudioLowLatencySupported:Z

.field private mNativeOutputSampleRate:I

.field private mcontext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mcontext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v0, "audio"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/media/AudioManager;

    .line 14
    .line 15
    iput-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 16
    .line 17
    .line 18
    const v1, 0xac44

    .line 19
    .line 20
    iput v1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mNativeOutputSampleRate:I

    .line 21
    .line 22
    const/16 v1, 0x100

    .line 23
    .line 24
    iput v1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    .line 25
    .line 26
    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    move-result v0

    .line 37
    .line 38
    iput v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mNativeOutputSampleRate:I

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 41
    .line 42
    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    move-result v0

    .line 53
    .line 54
    iput v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    const-string v0, "android.hardware.audio.low_latency"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    iput-boolean p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    .line 67
    return-void
.end method

.method private GetAudioMode(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private QuerySpeakerStatus()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x5

    .line 10
    return v0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 20
    return v0

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    const/4 v0, 0x3

    .line 30
    return v0

    .line 31
    :cond_2
    const/4 v0, 0x1

    .line 32
    return v0
.end method

.method private SetAudioMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-eq p1, v1, :cond_2

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-eq p1, v1, :cond_1

    .line 10
    const/4 v1, 0x3

    .line 11
    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 42
    :goto_0
    return v0
.end method

.method private SetPlayoutSpeaker(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loudspeakerOn"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method private enableHardwareEarback(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mcontext:Landroid/content/Context;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lio/agora/rtc/audio/HardwareEarbackController;->enableHardwareEarback(Z)I

    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    :goto_0
    return p1
.end method

.method private getAudioLowLatencyOutputFrameSize()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    return v0
.end method

.method private getNativeOutputSampleRate()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mNativeOutputSampleRate:I

    return v0
.end method

.method private isAudioLowLatencySupported()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    return v0
.end method

.method private isHardwareEarbackSupported()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mcontext:Landroid/content/Context;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->isHardwareEarbackSupported()Z

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method private setHardwareEarbackVolume(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mcontext:Landroid/content/Context;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lio/agora/rtc/audio/HardwareEarbackController;->setHardwareEarbackVolume(I)I

    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    :goto_0
    return p1
.end method
