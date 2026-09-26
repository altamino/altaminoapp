.class Lio/agora/rtc/audio/VivoHardwareEarback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/audio/IHardwareEarback;


# static fields
.field private static final KEY_KTV_MODE:Ljava/lang/String; = "vivo_ktv_mode"

.field private static final KEY_MIC_TYPE:Ljava/lang/String; = "vivo_ktv_mic_type"

.field private static final KEY_PLAY_SRC:Ljava/lang/String; = "vivo_ktv_play_source"

.field private static final KEY_VOL_MIC:Ljava/lang/String; = "vivo_ktv_volume_mic"

.field private static final TAG:Ljava/lang/String; = "VivoHardwareEarback Java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    .line 7
    .line 8
    iput-object p1, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/agora/rtc/audio/VivoHardwareEarback;->initialize()V

    .line 12
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mContext:Landroid/content/Context;

    return-void
.end method

.method public declared-synchronized enableEarbackFeature(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 p1, -0x1

    .line 4
    return p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/audio/VivoHardwareEarback;->destroy()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "VivoHardwareEarback Java"

    .line 7
    .line 8
    const-string v1, "mContext should not be null!"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    const-string v1, "audio"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/media/AudioManager;

    .line 21
    .line 22
    iput-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    .line 23
    return-void
.end method

.method public isHardwareEarbackSupported()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "vivo"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v2, "vivo_ktv_mic_type"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    new-instance v3, Ljava/util/StringTokenizer;

    .line 33
    .line 34
    const-string v4, "="

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    .line 41
    move-result v0

    .line 42
    const/4 v4, 0x2

    .line 43
    .line 44
    if-eq v4, v0, :cond_1

    .line 45
    return v1

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    move-result v0

    .line 64
    const/4 v2, 0x1

    .line 65
    .line 66
    if-eq v2, v0, :cond_2

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    :cond_2
    return v2

    .line 70
    :cond_3
    return v1
.end method

.method public declared-synchronized setHardwareEarbackVolume(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vol"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    if-gez p1, :cond_0

    .line 5
    move p1, v0

    .line 6
    .line 7
    :cond_0
    const/16 v1, 0xf

    .line 8
    .line 9
    if-ge v1, p1, :cond_1

    .line 10
    move p1, v1

    .line 11
    .line 12
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "vivo_ktv_volume_mic"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "="

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-object p1, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    .line 44
    return v0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    monitor-exit p0

    .line 48
    const/4 p1, -0x1

    .line 49
    return p1

    .line 50
    :goto_0
    monitor-exit p0

    .line 51
    throw p1
.end method
