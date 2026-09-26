.class Lio/agora/rtc/audio/HuaweiHardwareEarback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/audio/IHardwareEarback;


# static fields
.field private static final TAG:Ljava/lang/String; = "HuaweiHardwareEarback"


# instance fields
.field private latency:I

.field private mContext:Landroid/content/Context;

.field private mEarbackEnabled:Z

.field private mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/c;

.field private mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/d;

.field private mInited:Z

.field private volume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/d;

    .line 9
    .line 10
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mEarbackEnabled:Z

    .line 16
    .line 17
    iput v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    .line 18
    .line 19
    iput v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->volume:I

    .line 20
    .line 21
    const-string v0, "HuaweiHardwareEarback"

    .line 22
    .line 23
    const-string v1, ">>ctor"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    iput-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->initialize()V

    .line 32
    return-void
.end method

.method static synthetic access$002(Lio/agora/rtc/audio/HuaweiHardwareEarback;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    .line 3
    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "HuaweiHardwareEarback"

    .line 3
    .line 4
    const-string v1, ">>destroy"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/c;->l()V

    .line 13
    .line 14
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/d;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/d;->m()V

    .line 18
    return-void
.end method

.method public declared-synchronized enableEarbackFeature(Z)I
    .locals 4
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
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    const/4 p1, -0x7

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    :try_start_1
    const-string v0, "HuaweiHardwareEarback"

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, ">>enableEarbackFeature "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/c;->p()Z

    .line 36
    move-result v0

    .line 37
    const/4 v1, -0x1

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string p1, "HuaweiHardwareEarback"

    .line 42
    .line 43
    const-string v0, "karaoke not supported"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    .line 48
    return v1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->m(Z)I

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    const-string p1, "HuaweiHardwareEarback"

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    const-string v3, "enableKaraokeFeature failed ret "

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit p0

    .line 82
    return v1

    .line 83
    .line 84
    :cond_2
    :try_start_3
    iput-boolean p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mEarbackEnabled:Z

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->n()I

    .line 92
    move-result p1

    .line 93
    .line 94
    iput p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    .line 95
    .line 96
    const-string p1, "HuaweiHardwareEarback"

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    const-string v1, "latency "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    iget v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :cond_3
    monitor-exit p0

    .line 120
    const/4 p1, 0x0

    .line 121
    return p1

    .line 122
    :goto_0
    monitor-exit p0

    .line 123
    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "HuaweiHardwareEarback"

    .line 3
    .line 4
    const-string v1, ">>finalize"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->destroy()V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 14
    return-void
.end method

.method public initialize()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "HuaweiHardwareEarback"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "mContext is null!"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    const-string v0, ">>initialize"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/d;

    .line 20
    .line 21
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v2, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;-><init>(Lio/agora/rtc/audio/HuaweiHardwareEarback;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Lcom/huawei/multimedia/audiokit/interfaces/d;-><init>(Landroid/content/Context;Lcom/huawei/multimedia/audiokit/interfaces/e;)V

    .line 30
    .line 31
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/d;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/d;->n()V

    .line 35
    .line 36
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/d;

    .line 37
    .line 38
    sget-object v1, Lcom/huawei/multimedia/audiokit/interfaces/d$c;->HWAUDIO_FEATURE_KARAOKE:Lcom/huawei/multimedia/audiokit/interfaces/d$c;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/d;->l(Lcom/huawei/multimedia/audiokit/interfaces/d$c;)Lcom/huawei/multimedia/audiokit/interfaces/a;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 45
    .line 46
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 47
    return-void
.end method

.method public isHardwareEarbackSupported()Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    const-string v0, ">>isHardwareEarbackSupported"

    .line 9
    .line 10
    const-string v1, "HuaweiHardwareEarback"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/c;->p()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v3, "isSupported "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return v0
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
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    const/4 p1, -0x7

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    :try_start_1
    const-string v0, "HuaweiHardwareEarback"

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, ">>setHardwareEarbackVolume "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    if-gez p1, :cond_1

    .line 34
    move p1, v0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    const/16 v1, 0x64

    .line 38
    .line 39
    if-le p1, v1, :cond_2

    .line 40
    move p1, v1

    .line 41
    .line 42
    :cond_2
    :goto_0
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 43
    .line 44
    sget-object v2, Lcom/huawei/multimedia/audiokit/interfaces/c$c;->CMD_SET_VOCAL_VOLUME_BASE:Lcom/huawei/multimedia/audiokit/interfaces/c$c;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2, p1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->s(Lcom/huawei/multimedia/audiokit/interfaces/c$c;I)I

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const-string p1, "HuaweiHardwareEarback"

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v2, "setParameter error number "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit p0

    .line 75
    const/4 p1, -0x1

    .line 76
    return p1

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_3
    :try_start_2
    iput p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->volume:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit p0

    .line 82
    return v0

    .line 83
    :goto_1
    monitor-exit p0

    .line 84
    throw p1
.end method
