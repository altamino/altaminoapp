.class Lio/agora/rtc/audio/AudioDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final TAG:Ljava/lang/String;

.field private final _MaxRecPlay10msBlocks:I

.field private _audioManager:Landroid/media/AudioManager;

.field private _audioRecord:Landroid/media/AudioRecord;

.field private _audioTrack:Landroid/media/AudioTrack;

.field private _bufferedPlaySamples:I

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _doPlayInit:Z

.field private _doRecInit:Z

.field private _firstRenderTS:J

.field private _isPlaying:Z

.field private _isRecording:Z

.field private _lastRecDelay:J

.field private _playBufSize:I

.field private _playBuffer:Ljava/nio/ByteBuffer;

.field private _playChannel:I

.field private final _playLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _playPosition:I

.field private _playPreviousUnderrun:I

.field private _playbackRestartCount:I

.field private _playbackSampleRate:I

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private _recDelay:J

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _recStartDelay:I

.field private _recStartTS:J

.field private _recordBufSize:I

.field private _recordChannel:I

.field private _recordRestartCount:I

.field private _recordSampleRate:I

.field private _recordSource:I

.field private _renderStart:Z

.field private _streamType:I

.field private _tempBufPlay:[B

.field private _tempBufRec:[B

.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private maxDelay:I

.field private playWriten:I

.field private totalDelay:I

.field private useBuiltInAEC:Z


# direct methods
.method constructor <init>()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, "AudioDevice Java"

    .line 6
    .line 7
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->TAG:Ljava/lang/String;

    .line 8
    const/4 v1, 0x4

    .line 9
    .line 10
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_MaxRecPlay10msBlocks:I

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 14
    .line 15
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 16
    .line 17
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 21
    .line 22
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    .line 24
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 28
    .line 29
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 33
    .line 34
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    .line 38
    .line 39
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    .line 40
    .line 41
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    .line 42
    .line 43
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 44
    .line 45
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 46
    .line 47
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    .line 48
    .line 49
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    .line 50
    .line 51
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 52
    .line 53
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    .line 54
    .line 55
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    .line 56
    .line 57
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    .line 58
    .line 59
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    .line 60
    .line 61
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    .line 62
    .line 63
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 64
    .line 65
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    .line 66
    .line 67
    const-wide/16 v3, 0x0

    .line 68
    .line 69
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 70
    .line 71
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    .line 72
    .line 73
    const-wide/16 v5, 0xa

    .line 74
    .line 75
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 76
    .line 77
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    .line 78
    .line 79
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    .line 80
    .line 81
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 82
    .line 83
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 84
    .line 85
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    .line 86
    .line 87
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 88
    .line 89
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 90
    .line 91
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 92
    .line 93
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    .line 94
    .line 95
    const/16 v1, 0x1e00

    .line 96
    .line 97
    .line 98
    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .line 111
    const-string v3, "failed to allocate bytebuffer"

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v3, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    :goto_0
    new-array v0, v1, [B

    .line 117
    .line 118
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    .line 119
    .line 120
    new-array v0, v1, [B

    .line 121
    .line 122
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    .line 123
    .line 124
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 125
    .line 126
    if-eqz v0, :cond_0

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    .line 130
    :cond_0
    return-void
.end method

.method private BuiltInAECIsAvailable()Z
    .locals 3

    .line 1
    .line 2
    const-string v0, "AudioDevice Java"

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    .line 9
    :catch_0
    const-string v1, "Unable to query Audio Effect: Acoustic Echo Cancellation"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception v1

    .line 15
    .line 16
    const-string v2, "Unable to create AEC object "

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :goto_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method private BuiltInAECIsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    return v0
.end method

.method private CheckAudioStatus(I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPlayOut"
        }
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-lt v0, v1, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 10
    const/4 v1, -0x1

    .line 11
    .line 12
    const-string v3, "AudioDevice Java"

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v4, "audio"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/media/AudioManager;

    .line 27
    .line 28
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    const-string p1, "CheckAudioStatus error"

    .line 32
    .line 33
    .line 34
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return v1

    .line 36
    .line 37
    :cond_1
    :goto_0
    if-nez p1, :cond_6

    .line 38
    .line 39
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 47
    move-result v4

    .line 48
    .line 49
    const-string v5, "android.permission.RECORD_AUDIO"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v5, v0, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 53
    move-result p1

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    const-string p1, "CheckAudioStatus Microphone Permission denied"

    .line 58
    .line 59
    .line 60
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    const/16 p1, 0x403

    .line 63
    return p1

    .line 64
    .line 65
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    .line 75
    move-result v1

    .line 76
    .line 77
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lio/agora/rtc/audio/b;->a(Landroid/media/AudioManager;)Ljava/util/List;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v0

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lio/agora/rtc/audio/c;->a(Ljava/lang/Object;)Landroid/media/AudioRecordingConfiguration;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lio/agora/rtc/audio/d;->a(Landroid/media/AudioRecordingConfiguration;)I

    .line 103
    move-result v0

    .line 104
    .line 105
    if-eq v0, v1, :cond_4

    .line 106
    .line 107
    const/16 v0, 0x409

    .line 108
    move v2, v0

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :cond_5
    const-string p1, "CheckAudioStatus unkonwn error"

    .line 112
    .line 113
    .line 114
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return v1

    .line 116
    :cond_6
    return v2
.end method

.method private EnableBuiltInAEC(Z)Z
    .locals 2
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
    iput-boolean p1, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 10
    move-result p1

    .line 11
    .line 12
    const-string v0, "AudioDevice Java"

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "AcousticEchoCanceler.setEnabled failed"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    return p1

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v1, "AcousticEchoCanceler.getEnabled: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method private GetAudioMode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "audio"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/media/AudioManager;

    .line 17
    .line 18
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "AudioDevice Java"

    .line 25
    .line 26
    const-string v1, "Could not change audio routing - no audio manager"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v0, -0x1

    .line 31
    return v0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    .line 35
    move-result v0

    .line 36
    return v0
.end method

.method private GetNativePlayDelay()I
    .locals 4

    iget-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    :cond_0
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    if-gez v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    :cond_1
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    iget-wide v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private GetNativeSampleRate()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "audio"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/media/AudioManager;

    .line 17
    .line 18
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 21
    .line 22
    .line 23
    const v1, 0xac44

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "AudioDevice Java"

    .line 28
    .line 29
    const-string v2, "Could not set audio mode - no audio manager"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return v1

    .line 34
    .line 35
    :cond_1
    const-string v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    move-result v1

    .line 46
    :cond_2
    return v1
.end method

.method private GetPlayoutMaxVolume()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "audio"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/media/AudioManager;

    .line 17
    .line 18
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, -0x1

    .line 31
    :goto_0
    return v0
.end method

.method private GetPlayoutVolume()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "audio"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/media/AudioManager;

    .line 17
    .line 18
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, -0x1

    .line 31
    :goto_0
    return v0
.end method

.method private GetPreferedSampleRate()I
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "audio"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/media/AudioManager;

    .line 17
    .line 18
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 24
    .line 25
    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :goto_1
    const-string v1, "AudioDevice Java"

    .line 37
    .line 38
    const-string v2, "GetPreferedSampleRate error"

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    :goto_2
    if-nez v0, :cond_1

    .line 45
    .line 46
    const/16 v0, 0x3e80

    .line 47
    :cond_1
    return v0
.end method

.method private GetUnderrunCount()I
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->GetUnderrunCountOnNougatOrHigher()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->GetUnderrunCountOnLowerThanNougat()I

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method private GetUnderrunCountOnLowerThanNougat()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private GetUnderrunCountOnNougatOrHigher()I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    .line 2
    const-string v0, "AudioDevice Java"

    .line 3
    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x18

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    if-lt v1, v2, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lio/agora/rtc/audio/e;->a(Landroid/media/AudioTrack;)I

    .line 15
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    .line 19
    const-string v2, "getUnderrun fail "

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    move v1, v3

    .line 24
    .line 25
    :goto_0
    iget v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    .line 26
    .line 27
    sub-int v2, v1, v2

    .line 28
    .line 29
    if-gez v2, :cond_0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v3, v2

    .line 32
    .line 33
    :goto_1
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    .line 34
    .line 35
    if-lez v3, :cond_1

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, "Android AudioTrack underrun count: "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    return v3
.end method

.method private InitPlayback(IIII)I
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sampleRate",
            "playChannel",
            "streamType",
            "profiledMiniOutBufferMs"
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    move/from16 v2, p3

    .line 8
    .line 9
    iput v2, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 10
    .line 11
    mul-int v2, p4, v0

    .line 12
    mul-int/2addr v2, v9

    .line 13
    const/4 v3, 0x2

    .line 14
    mul-int/2addr v2, v3

    .line 15
    .line 16
    div-int/lit16 v2, v2, 0x3e8

    .line 17
    const/4 v4, 0x4

    .line 18
    .line 19
    const/16 v5, 0xc

    .line 20
    .line 21
    if-ne v9, v3, :cond_0

    .line 22
    move v6, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v6, v4

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {v0, v6, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 28
    move-result v6

    .line 29
    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v8, "Java minimum playback buffer size is "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v8, ", profiledMiniOutBufferSize is "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v8, " stream type "

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget v8, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v7

    .line 64
    .line 65
    const-string v10, "AudioDevice Java"

    .line 66
    .line 67
    .line 68
    invoke-static {v10, v7}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    if-ge v6, v2, :cond_1

    .line 71
    move v11, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v11, v6

    .line 74
    :goto_1
    const/4 v12, 0x0

    .line 75
    .line 76
    iput v12, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    const-string v6, "Java playback buffer size is "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v6, ", duration is "

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    mul-int/lit16 v6, v11, 0x3e8

    .line 97
    .line 98
    mul-int v7, v0, v9

    .line 99
    mul-int/2addr v7, v3

    .line 100
    div-int/2addr v6, v7

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v6, " ms"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    .line 115
    invoke-static {v10, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 118
    .line 119
    if-eqz v2, :cond_2

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 123
    const/4 v2, 0x0

    .line 124
    .line 125
    iput-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 126
    :cond_2
    const/4 v13, -0x1

    .line 127
    .line 128
    :try_start_0
    new-instance v14, Landroid/media/AudioTrack;

    .line 129
    .line 130
    iget v6, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 131
    .line 132
    if-ne v9, v3, :cond_3

    .line 133
    goto :goto_2

    .line 134
    :cond_3
    move v5, v4

    .line 135
    :goto_2
    const/4 v7, 0x2

    .line 136
    const/4 v8, 0x1

    .line 137
    move-object v2, v14

    .line 138
    move v3, v6

    .line 139
    .line 140
    move/from16 v4, p1

    .line 141
    move v6, v7

    .line 142
    move v7, v11

    .line 143
    .line 144
    .line 145
    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 146
    .line 147
    iput-object v14, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    .line 150
    .line 151
    iput v9, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    .line 152
    .line 153
    iput v11, v1, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    .line 154
    .line 155
    iput v12, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 156
    .line 157
    .line 158
    invoke-virtual {v14}, Landroid/media/AudioTrack;->getState()I

    .line 159
    move-result v2

    .line 160
    const/4 v3, 0x1

    .line 161
    .line 162
    if-eq v2, v3, :cond_4

    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    const-string v3, "Java playback not initialized "

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    .line 182
    invoke-static {v10, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return v13

    .line 184
    .line 185
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    const-string v3, "Java play sample rate is set to "

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v0

    .line 201
    .line 202
    .line 203
    invoke-static {v10, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 206
    .line 207
    if-nez v0, :cond_5

    .line 208
    .line 209
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 210
    .line 211
    if-eqz v0, :cond_5

    .line 212
    .line 213
    const-string v2, "audio"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    check-cast v0, Landroid/media/AudioManager;

    .line 220
    .line 221
    iput-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 222
    .line 223
    :cond_5
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 224
    .line 225
    if-nez v0, :cond_6

    .line 226
    return v12

    .line 227
    .line 228
    :cond_6
    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 232
    move-result v0

    .line 233
    return v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .line 236
    const-string v2, "Unable to new AudioTrack: "

    .line 237
    .line 238
    .line 239
    invoke-static {v10, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    return v13
.end method

.method private InitRecording(III)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioSource",
            "sampleRate",
            "recChannel"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    const/16 v1, 0xc

    .line 5
    const/4 v2, 0x2

    .line 6
    .line 7
    if-ne p3, v2, :cond_0

    .line 8
    move v3, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {p2, v3, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 14
    move-result v3

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v5, "Java minimum recording buffer size is "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    const-string v10, "AudioDevice Java"

    .line 34
    .line 35
    .line 36
    invoke-static {v10, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    mul-int/lit8 v4, p2, 0x5

    .line 39
    .line 40
    div-int/lit16 v4, v4, 0xc8

    .line 41
    .line 42
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    .line 43
    .line 44
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 45
    const/4 v5, 0x0

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 51
    .line 52
    iput-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 53
    .line 54
    :cond_1
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    .line 60
    .line 61
    iput-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 62
    .line 63
    :cond_2
    :try_start_0
    new-instance v11, Landroid/media/AudioRecord;

    .line 64
    .line 65
    if-ne p3, v2, :cond_3

    .line 66
    move v7, v1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v7, v0

    .line 69
    :goto_1
    const/4 v8, 0x2

    .line 70
    move-object v4, v11

    .line 71
    move v5, p1

    .line 72
    move v6, p2

    .line 73
    move v9, v3

    .line 74
    .line 75
    .line 76
    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 77
    .line 78
    iput-object v11, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11}, Landroid/media/AudioRecord;->getState()I

    .line 82
    move-result v0

    .line 83
    const/4 v1, 0x1

    .line 84
    .line 85
    if-eq v0, v1, :cond_4

    .line 86
    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    const-string p3, "Java recording not initialized "

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 p1, -0x2

    .line 107
    return p1

    .line 108
    .line 109
    :cond_4
    iput p2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    .line 110
    .line 111
    iput p3, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    .line 112
    .line 113
    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    .line 114
    .line 115
    iput v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    .line 116
    const/4 p1, 0x0

    .line 117
    .line 118
    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 119
    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    const-string p3, "Java recording sample rate set to "

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    const-string p2, "AcousticEchoCanceler.isAvailable: "

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->BuiltInAECIsAvailable()Z

    .line 152
    move-result p2

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    .line 162
    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->BuiltInAECIsAvailable()Z

    .line 166
    move-result p1

    .line 167
    .line 168
    if-nez p1, :cond_5

    .line 169
    .line 170
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    .line 171
    return p1

    .line 172
    .line 173
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    .line 177
    move-result p1

    .line 178
    .line 179
    .line 180
    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    .line 181
    move-result-object p1

    .line 182
    .line 183
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 184
    .line 185
    if-nez p1, :cond_6

    .line 186
    .line 187
    const-string p1, "AcousticEchoCanceler.create failed"

    .line 188
    .line 189
    .line 190
    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    goto :goto_3

    .line 192
    .line 193
    .line 194
    :cond_6
    invoke-virtual {p1}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    if-nez p1, :cond_7

    .line 198
    .line 199
    const-string p1, "getDescriptor() failed"

    .line 200
    .line 201
    .line 202
    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    goto :goto_2

    .line 204
    .line 205
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    const-string p3, "AcousticEchoCanceler name: "

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    iget-object p3, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string p3, ", implementor: "

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    iget-object p3, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string p3, ", uuid: "

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    iget-object p1, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    .line 245
    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    :goto_2
    iget-boolean p1, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, p1}, Lio/agora/rtc/audio/AudioDevice;->EnableBuiltInAEC(Z)Z

    .line 251
    .line 252
    :goto_3
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    .line 253
    return p1

    .line 254
    :catch_0
    move-exception p1

    .line 255
    .line 256
    const-string p2, "Unable to new AudioRecord: "

    .line 257
    .line 258
    .line 259
    invoke-static {v10, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    const/4 p1, -0x1

    .line 261
    return p1
.end method

.method private PlayAudio(I)I
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lengthInBytes"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move/from16 v2, p1

    .line 5
    .line 6
    const-string v3, "AudioDevice Java"

    .line 7
    .line 8
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 22
    const/4 v0, -0x2

    .line 23
    return v0

    .line 24
    .line 25
    :cond_0
    :try_start_1
    iget-boolean v0, v1, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    const/4 v5, 0x1

    .line 27
    .line 28
    if-ne v0, v5, :cond_1

    .line 29
    .line 30
    const/16 v0, -0x13

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    .line 37
    goto/16 :goto_8

    .line 38
    :catch_0
    move-exception v0

    .line 39
    move-object v6, v0

    .line 40
    .line 41
    :try_start_3
    const-string v0, "Set play thread priority failed: "

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v0, v6}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    :goto_0
    iput-boolean v4, v1, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception v0

    .line 49
    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_1
    :goto_1
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    iget-object v6, v1, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 60
    .line 61
    iget-object v6, v1, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v6, v4, v2}, Landroid/media/AudioTrack;->write([BII)I

    .line 65
    move-result v6

    .line 66
    .line 67
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 71
    .line 72
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 73
    .line 74
    shr-int/lit8 v7, v6, 0x1

    .line 75
    add-int/2addr v0, v7

    .line 76
    .line 77
    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 78
    .line 79
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 80
    add-int/2addr v0, v6

    .line 81
    .line 82
    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 83
    .line 84
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 88
    move-result v0

    .line 89
    .line 90
    iget v7, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    .line 91
    mul-int/2addr v0, v7

    .line 92
    .line 93
    iget v7, v1, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 94
    .line 95
    div-int/lit8 v8, v7, 0x2

    .line 96
    sub-int/2addr v8, v0

    .line 97
    const/4 v9, 0x2

    .line 98
    div-int/2addr v8, v9

    .line 99
    .line 100
    div-int/lit8 v8, v8, 0x30

    .line 101
    .line 102
    iget v10, v1, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 103
    .line 104
    if-le v8, v10, :cond_2

    .line 105
    div-int/2addr v7, v9

    .line 106
    sub-int/2addr v7, v0

    .line 107
    div-int/2addr v7, v9

    .line 108
    .line 109
    div-int/lit8 v10, v7, 0x30

    .line 110
    .line 111
    :cond_2
    iput v10, v1, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 112
    .line 113
    iget-wide v7, v1, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 114
    .line 115
    const-wide/16 v10, 0x0

    .line 116
    .line 117
    cmp-long v7, v7, v10

    .line 118
    .line 119
    if-nez v7, :cond_3

    .line 120
    .line 121
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    move-result-wide v7

    .line 124
    .line 125
    iput-wide v7, v1, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 126
    .line 127
    :cond_3
    if-lez v0, :cond_4

    .line 128
    .line 129
    iget-boolean v7, v1, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    .line 130
    .line 131
    if-nez v7, :cond_4

    .line 132
    .line 133
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    move-result-wide v7

    .line 136
    .line 137
    iget-wide v10, v1, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 138
    sub-long/2addr v7, v10

    .line 139
    .line 140
    iput-wide v7, v1, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 141
    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    const-string v8, "caculated the first render TS = "

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    iget-wide v10, v1, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v8, " pos = "

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    div-int/lit8 v8, v0, 0x2

    .line 163
    .line 164
    div-int/lit8 v8, v8, 0x30

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v8, "ms delay "

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    iget-wide v10, v1, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 175
    .line 176
    iget v8, v1, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 177
    int-to-long v12, v8

    .line 178
    add-long/2addr v10, v12

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v7

    .line 186
    .line 187
    .line 188
    invoke-static {v3, v7}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    iput-boolean v5, v1, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    .line 191
    .line 192
    :cond_4
    iget-boolean v7, v1, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    .line 193
    .line 194
    if-eqz v7, :cond_5

    .line 195
    .line 196
    iget-wide v7, v1, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 197
    long-to-int v7, v7

    .line 198
    .line 199
    iget v8, v1, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 200
    add-int/2addr v7, v8

    .line 201
    .line 202
    iput v7, v1, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    .line 203
    .line 204
    :cond_5
    iget v7, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 205
    .line 206
    if-ge v0, v7, :cond_6

    .line 207
    .line 208
    iput v4, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 209
    .line 210
    :cond_6
    iget v7, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 211
    .line 212
    iget v8, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 213
    .line 214
    sub-int v8, v0, v8

    .line 215
    sub-int/2addr v7, v8

    .line 216
    .line 217
    iput v7, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 218
    .line 219
    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 220
    .line 221
    iget-boolean v0, v1, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    .line 222
    .line 223
    if-nez v0, :cond_7

    .line 224
    move v4, v7

    .line 225
    .line 226
    :cond_7
    if-eq v6, v2, :cond_a

    .line 227
    .line 228
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    .line 230
    const/16 v2, 0x14

    .line 231
    .line 232
    if-le v0, v2, :cond_8

    .line 233
    .line 234
    :goto_2
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 238
    return v6

    .line 239
    .line 240
    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    const-string v2, "Error writing AudioTrack! Restart AudioTrack "

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    .line 259
    .line 260
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 263
    add-int/2addr v0, v5

    .line 264
    .line 265
    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 266
    .line 267
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 271
    .line 272
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 276
    const/4 v0, 0x0

    .line 277
    .line 278
    iput-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 279
    .line 280
    :try_start_5
    new-instance v0, Landroid/media/AudioTrack;

    .line 281
    .line 282
    iget v11, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 283
    .line 284
    iget v12, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    .line 285
    .line 286
    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    .line 287
    .line 288
    if-ne v2, v9, :cond_9

    .line 289
    .line 290
    const/16 v2, 0xc

    .line 291
    :goto_3
    move v13, v2

    .line 292
    goto :goto_4

    .line 293
    :cond_9
    const/4 v2, 0x4

    .line 294
    goto :goto_3

    .line 295
    :goto_4
    const/4 v14, 0x2

    .line 296
    .line 297
    iget v15, v1, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    .line 298
    .line 299
    const/16 v16, 0x1

    .line 300
    move-object v10, v0

    .line 301
    .line 302
    .line 303
    invoke-direct/range {v10 .. v16}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 304
    .line 305
    iput-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 309
    goto :goto_2

    .line 310
    :catch_2
    move-exception v0

    .line 311
    .line 312
    .line 313
    :try_start_6
    const-string/jumbo v2, "restart audio fail"

    .line 314
    .line 315
    .line 316
    invoke-static {v3, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 317
    goto :goto_2

    .line 318
    .line 319
    :cond_a
    :goto_5
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 323
    goto :goto_7

    .line 324
    .line 325
    :goto_6
    :try_start_7
    const-string v2, "PlayAudio got fatal error "

    .line 326
    .line 327
    .line 328
    invoke-static {v3, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 329
    goto :goto_5

    .line 330
    :goto_7
    return v4

    .line 331
    .line 332
    :goto_8
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    throw v0
.end method

.method private QuerySpeakerStatus()I
    .locals 13

    .line 1
    .line 2
    const-string v0, "bluetooth"

    .line 3
    .line 4
    const-string v1, "headset"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "phone"

    .line 8
    .line 9
    const-string v3, "AudioDevice Java"

    .line 10
    .line 11
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    const-string v5, "audio"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    check-cast v4, Landroid/media/AudioManager;

    .line 26
    .line 27
    iput-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 28
    :cond_0
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x1

    .line 30
    const/4 v6, 0x5

    .line 31
    const/4 v7, -0x1

    .line 32
    .line 33
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/16 v9, 0x1a

    .line 36
    .line 37
    if-lt v8, v9, :cond_4

    .line 38
    .line 39
    iget-object v8, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 40
    .line 41
    const-string v9, "media_router"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v8

    .line 46
    .line 47
    check-cast v8, Landroid/media/MediaRouter;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8, v5}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    .line 51
    move-result-object v8

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    .line 55
    move-result-object v9

    .line 56
    .line 57
    .line 58
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 59
    move-result-object v9

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 63
    .line 64
    iget-object v9, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object v9

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 72
    move-result-object v9

    .line 73
    .line 74
    .line 75
    invoke-static {v9}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    .line 76
    move-result-object v10

    .line 77
    .line 78
    iget-object v11, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    move-result-object v11

    .line 83
    .line 84
    .line 85
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 86
    move-result-object v11

    .line 87
    .line 88
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v12}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 92
    .line 93
    iget-object v12, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    move-result-object v12

    .line 98
    .line 99
    .line 100
    invoke-virtual {v12, v9, v11}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 101
    .line 102
    iget-object v12, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v12}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 106
    move-result-object v12

    .line 107
    .line 108
    .line 109
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 110
    move-result-object v12

    .line 111
    .line 112
    .line 113
    invoke-virtual {v12, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 114
    move-result v2

    .line 115
    .line 116
    if-nez v2, :cond_1

    .line 117
    .line 118
    .line 119
    const-string/jumbo v0, "speaker"

    .line 120
    .line 121
    .line 122
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    goto :goto_2

    .line 126
    .line 127
    :cond_1
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8, v2}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 139
    move-result v2

    .line 140
    .line 141
    if-nez v2, :cond_2

    .line 142
    .line 143
    .line 144
    invoke-static {v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    move v0, v4

    .line 146
    goto :goto_1

    .line 147
    .line 148
    :cond_2
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    .line 155
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 156
    move-result-object v1

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 160
    move-result v1

    .line 161
    .line 162
    if-nez v1, :cond_3

    .line 163
    .line 164
    .line 165
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    move v0, v6

    .line 167
    goto :goto_1

    .line 168
    :cond_3
    :goto_0
    move v0, v7

    .line 169
    .line 170
    .line 171
    :goto_1
    invoke-static {v9, v10}, Landroidx/appcompat/app/c;->a(Landroid/content/res/Configuration;Landroid/os/LocaleList;)V

    .line 172
    .line 173
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v9, v11}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    if-eq v0, v7, :cond_4

    .line 183
    return v0

    .line 184
    .line 185
    :goto_2
    const-string v1, "error in Query audio route "

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    .line 193
    :cond_4
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 194
    .line 195
    if-nez v0, :cond_5

    .line 196
    .line 197
    const-string v0, "Could not get audio routing - no audio manager"

    .line 198
    .line 199
    .line 200
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return v7

    .line 202
    .line 203
    .line 204
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    .line 205
    move-result v0

    .line 206
    .line 207
    if-eqz v0, :cond_6

    .line 208
    return v6

    .line 209
    .line 210
    :cond_6
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    .line 214
    move-result v0

    .line 215
    .line 216
    if-eqz v0, :cond_7

    .line 217
    const/4 v0, 0x3

    .line 218
    return v0

    .line 219
    .line 220
    :cond_7
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 224
    move-result v0

    .line 225
    .line 226
    if-eqz v0, :cond_8

    .line 227
    return v6

    .line 228
    .line 229
    :cond_8
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    .line 233
    move-result v0

    .line 234
    .line 235
    if-eqz v0, :cond_9

    .line 236
    return v4

    .line 237
    :cond_9
    return v5
.end method

.method private RecordAudio(I)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lengthInBytes"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "AudioDevice Java"

    .line 3
    .line 4
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    const/4 p1, -0x4

    .line 20
    return p1

    .line 21
    .line 22
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    const/16 v2, -0x13

    .line 29
    .line 30
    .line 31
    :try_start_2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    .line 35
    goto/16 :goto_7

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .line 38
    :try_start_3
    const-string v5, "Set rec thread priority failed: "

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v5, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    :goto_0
    iput-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 44
    goto :goto_1

    .line 45
    :catch_1
    move-exception p1

    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    :goto_1
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 53
    .line 54
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 55
    .line 56
    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v5, v4, p1}, Landroid/media/AudioRecord;->read([BII)I

    .line 60
    move-result v2

    .line 61
    .line 62
    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    iget-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 70
    .line 71
    const-wide/16 v7, 0xa

    .line 72
    .line 73
    cmp-long v5, v5, v7

    .line 74
    .line 75
    if-nez v5, :cond_5

    .line 76
    .line 77
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    const/16 v6, 0x18

    .line 80
    .line 81
    if-lt v5, v6, :cond_2

    .line 82
    .line 83
    new-instance v5, Landroid/media/AudioTimestamp;

    .line 84
    .line 85
    .line 86
    invoke-direct {v5}, Landroid/media/AudioTimestamp;-><init>()V

    .line 87
    .line 88
    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 89
    .line 90
    .line 91
    invoke-static {v6, v5, v4}, Lio/agora/rtc/audio/a;->a(Landroid/media/AudioRecord;Landroid/media/AudioTimestamp;I)I

    .line 92
    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 95
    move-result-wide v9

    .line 96
    .line 97
    iget-wide v5, v5, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 98
    sub-long/2addr v9, v5

    .line 99
    .line 100
    const-wide/16 v5, 0x3e8

    .line 101
    div-long/2addr v9, v5

    .line 102
    div-long/2addr v9, v5

    .line 103
    .line 104
    iput-wide v9, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 105
    .line 106
    const-wide/16 v5, 0x32

    .line 107
    .line 108
    cmp-long v5, v9, v5

    .line 109
    .line 110
    if-lez v5, :cond_3

    .line 111
    .line 112
    iput-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :cond_2
    iput-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 116
    .line 117
    :cond_3
    :goto_2
    iget v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 118
    .line 119
    if-nez v5, :cond_4

    .line 120
    .line 121
    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 123
    move-result-wide v5

    .line 124
    .line 125
    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    .line 126
    sub-long/2addr v5, v7

    .line 127
    long-to-int v5, v5

    .line 128
    .line 129
    div-int/lit16 v5, v5, 0x3e8

    .line 130
    .line 131
    div-int/lit16 v5, v5, 0x3e8

    .line 132
    .line 133
    iput v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 134
    .line 135
    :cond_4
    iget-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 136
    .line 137
    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 138
    int-to-long v7, v7

    .line 139
    add-long/2addr v5, v7

    .line 140
    .line 141
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 142
    .line 143
    :cond_5
    iget-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    .line 144
    .line 145
    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 146
    .line 147
    cmp-long v5, v5, v7

    .line 148
    .line 149
    if-eqz v5, :cond_6

    .line 150
    .line 151
    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    .line 155
    move-result v5

    .line 156
    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    const-string v7, "frames  "

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v7, " recDelay "

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v7, " caculated frames delay "

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    iget-object v7, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7}, Landroid/media/AudioRecord;->getSampleRate()I

    .line 189
    move-result v7

    .line 190
    .line 191
    div-int/lit16 v7, v7, 0x3e8

    .line 192
    div-int/2addr v5, v7

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v5

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    iget-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 205
    .line 206
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    .line 207
    .line 208
    :cond_6
    if-eq v2, p1, :cond_9

    .line 209
    .line 210
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 211
    .line 212
    rem-int/lit8 p1, p1, 0xa

    .line 213
    .line 214
    if-nez p1, :cond_7

    .line 215
    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    const-string v1, "Error reading AudioRecord! AudioRecord.read returns "

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object p1

    .line 232
    .line 233
    .line 234
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    :cond_7
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 237
    add-int/2addr p1, v3

    .line 238
    .line 239
    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 240
    .line 241
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    .line 245
    .line 246
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    .line 250
    const/4 p1, 0x0

    .line 251
    .line 252
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 253
    .line 254
    new-instance p1, Landroid/media/AudioRecord;

    .line 255
    .line 256
    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    .line 257
    .line 258
    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    .line 259
    .line 260
    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    .line 261
    const/4 v3, 0x2

    .line 262
    .line 263
    if-ne v1, v3, :cond_8

    .line 264
    .line 265
    const/16 v1, 0xc

    .line 266
    :goto_3
    move v8, v1

    .line 267
    goto :goto_4

    .line 268
    .line 269
    :cond_8
    const/16 v1, 0x10

    .line 270
    goto :goto_3

    .line 271
    :goto_4
    const/4 v9, 0x2

    .line 272
    .line 273
    iget v10, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    .line 274
    move-object v5, p1

    .line 275
    .line 276
    .line 277
    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 278
    .line 279
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    .line 283
    .line 284
    .line 285
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 286
    move-result-wide v5

    .line 287
    .line 288
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    .line 289
    .line 290
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 291
    .line 292
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 296
    return v2

    .line 297
    .line 298
    :cond_9
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 302
    goto :goto_6

    .line 303
    .line 304
    :goto_5
    :try_start_4
    const-string v1, "RecordAudio try failed: "

    .line 305
    .line 306
    .line 307
    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 308
    .line 309
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 313
    .line 314
    const/16 v1, -0xa

    .line 315
    :goto_6
    return v1

    .line 316
    .line 317
    :goto_7
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 321
    throw p1
.end method

.method private SetAudioMode(I)I
    .locals 14
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
    const-string v0, "AudioDevice Java"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v3, "audio"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Landroid/media/AudioManager;

    .line 20
    .line 21
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 22
    .line 23
    :cond_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    const-string p1, "Could not change audio routing - no audio manager"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 p1, -0x1

    .line 32
    return p1

    .line 33
    :cond_1
    const/4 v3, 0x3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 37
    move-result v2

    .line 38
    .line 39
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 43
    move-result v4

    .line 44
    .line 45
    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 49
    move-result v5

    .line 50
    .line 51
    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 55
    move-result v6

    .line 56
    .line 57
    sub-int v7, v2, v5

    .line 58
    int-to-double v8, v5

    .line 59
    int-to-double v10, v2

    .line 60
    div-double/2addr v8, v10

    .line 61
    .line 62
    iget-object v10, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10}, Landroid/media/AudioManager;->getMode()I

    .line 66
    move-result v10

    .line 67
    .line 68
    if-ne v10, p1, :cond_2

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string v3, "[Java AudioDevice] audioManager.getmode is the same as SetAudioMode = "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;)V

    .line 89
    return v1

    .line 90
    .line 91
    :cond_2
    iget-boolean v10, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    .line 92
    const/4 v11, 0x1

    .line 93
    .line 94
    if-eqz v10, :cond_a

    .line 95
    .line 96
    new-instance v10, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    const-string v12, "_audioManager.getMode() = "

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    iget-object v12, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12}, Landroid/media/AudioManager;->getMode()I

    .line 110
    move-result v12

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v12, " target mode = "

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v12, "factorX = "

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v12, "mMediaMaxVolume="

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v12, "mCommMaxVolume="

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v5, "mCurrMediaVolume="

    .line 148
    .line 149
    .line 150
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v5, "mCurrCommVolume="

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v5, "delta"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v5

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v5}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 179
    .line 180
    const/16 v5, 0xc

    .line 181
    .line 182
    if-ne p1, v3, :cond_6

    .line 183
    .line 184
    if-ge v7, v5, :cond_3

    .line 185
    sub-int/2addr v4, v7

    .line 186
    .line 187
    if-ge v4, v11, :cond_4

    .line 188
    move v4, v11

    .line 189
    goto :goto_0

    .line 190
    :cond_3
    int-to-double v4, v4

    .line 191
    mul-double/2addr v4, v8

    .line 192
    add-double/2addr v4, v12

    .line 193
    double-to-int v4, v4

    .line 194
    .line 195
    :cond_4
    :goto_0
    if-ge v4, v11, :cond_5

    .line 196
    move v4, v11

    .line 197
    .line 198
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    const-string v5, "[Java AudioDevice] set voice call vol = "

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v2

    .line 214
    .line 215
    .line 216
    invoke-static {v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;)V

    .line 217
    .line 218
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v1, v4, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 222
    goto :goto_2

    .line 223
    .line 224
    :cond_6
    if-nez p1, :cond_a

    .line 225
    .line 226
    if-ge v7, v5, :cond_7

    .line 227
    add-int/2addr v6, v7

    .line 228
    .line 229
    if-ge v6, v2, :cond_8

    .line 230
    move v2, v6

    .line 231
    goto :goto_1

    .line 232
    :cond_7
    int-to-double v4, v6

    .line 233
    div-double/2addr v4, v8

    .line 234
    add-double/2addr v4, v12

    .line 235
    double-to-int v2, v4

    .line 236
    .line 237
    :cond_8
    :goto_1
    if-ge v2, v11, :cond_9

    .line 238
    move v2, v11

    .line 239
    .line 240
    :cond_9
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v3, v2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 244
    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    const-string v5, "[Java AudioDevice] set music vol = "

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v2

    .line 261
    .line 262
    .line 263
    invoke-static {v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;)V

    .line 264
    .line 265
    :cond_a
    :goto_2
    if-eqz p1, :cond_e

    .line 266
    .line 267
    if-eq p1, v11, :cond_d

    .line 268
    const/4 v2, 0x2

    .line 269
    .line 270
    if-eq p1, v2, :cond_c

    .line 271
    .line 272
    if-eq p1, v3, :cond_b

    .line 273
    .line 274
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 278
    goto :goto_3

    .line 279
    .line 280
    :cond_b
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 284
    goto :goto_3

    .line 285
    .line 286
    :cond_c
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 290
    goto :goto_3

    .line 291
    .line 292
    :cond_d
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v11}, Landroid/media/AudioManager;->setMode(I)V

    .line 296
    goto :goto_3

    .line 297
    .line 298
    :cond_e
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 302
    .line 303
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    const-string v3, "[Java AudioDevice] set audio mode = "

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    move-result-object p1

    .line 319
    .line 320
    .line 321
    invoke-static {p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_4

    .line 323
    .line 324
    .line 325
    :catch_0
    const-string/jumbo p1, "set audio mode failed! "

    .line 326
    .line 327
    .line 328
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_4
    return v1
.end method

.method private SetPlayoutSpeaker(Z)I
    .locals 2
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
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "audio"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/media/AudioManager;

    .line 17
    .line 18
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string p1, "AudioDevice Java"

    .line 25
    .line 26
    const-string v0, "Could not change audio routing - no audio manager"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 p1, -0x1

    .line 31
    return p1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 35
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method private SetPlayoutVolume(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "audio"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/media/AudioManager;

    .line 17
    .line 18
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 28
    move-result v0

    .line 29
    .line 30
    const/16 v1, 0xff

    .line 31
    .line 32
    if-lt p1, v1, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    mul-int/2addr p1, v0

    .line 35
    .line 36
    div-int/lit16 v0, p1, 0xff

    .line 37
    .line 38
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 39
    .line 40
    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v2, -0x1

    .line 47
    :goto_1
    return v2
.end method

.method private StartPlayback()I
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    iput-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    .line 8
    const/4 v1, -0x1

    .line 9
    .line 10
    :try_start_0
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 11
    .line 12
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 16
    .line 17
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 18
    .line 19
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    .line 23
    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :goto_0
    const-string v2, "AudioDevice Java"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v3, "startplayback fail"

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return v1

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    return v1
.end method

.method private StartRecording()I
    .locals 5

    .line 1
    .line 2
    const-string v0, "AudioDevice Java"

    .line 3
    const/4 v1, -0x2

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v3, "Recording start time "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 25
    move-result-wide v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 39
    move-result-wide v2

    .line 40
    .line 41
    iput-wide v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 45
    .line 46
    const-wide/16 v3, 0xa

    .line 47
    .line 48
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/4 v0, 0x1

    .line 50
    .line 51
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    .line 52
    return v2

    .line 53
    :catch_0
    move-exception v2

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move-exception v1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :goto_0
    const-string v3, "failed to startRecording Exception"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v3, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return v1

    .line 63
    .line 64
    :goto_1
    const-string v2, "failed to startRecording"

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    const/4 v0, -0x1

    .line 69
    return v0
.end method

.method private StopPlayback()I
    .locals 5

    .line 1
    .line 2
    const-string v0, "AudioDevice Java"

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 7
    .line 8
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    :try_start_0
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 16
    const/4 v4, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v4}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 20
    .line 21
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x3

    .line 27
    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    .line 34
    .line 35
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_5

    .line 42
    :catch_0
    move-exception v3

    .line 43
    goto :goto_2

    .line 44
    :catch_1
    move-exception v3

    .line 45
    goto :goto_4

    .line 46
    .line 47
    :cond_0
    :goto_0
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    .line 51
    .line 52
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 55
    .line 56
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :goto_2
    :try_start_1
    const-string v4, "Stop playback fail"

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v4, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 73
    .line 74
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 78
    .line 79
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 80
    goto :goto_1

    .line 81
    :goto_3
    const/4 v0, 0x0

    .line 82
    .line 83
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    .line 84
    return v0

    .line 85
    .line 86
    :goto_4
    :try_start_2
    const-string v4, "Unable to stop playback: "

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v4, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .line 91
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 97
    .line 98
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 102
    .line 103
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 104
    .line 105
    :cond_2
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 106
    .line 107
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 111
    const/4 v0, -0x1

    .line 112
    return v0

    .line 113
    .line 114
    :goto_5
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 115
    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V

    .line 120
    .line 121
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    .line 125
    .line 126
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 127
    .line 128
    :cond_3
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 129
    .line 130
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    throw v0
.end method

.method private StopRecording()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x3

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v2

    .line 24
    goto :goto_4

    .line 25
    :catch_0
    move-exception v2

    .line 26
    goto :goto_2

    .line 27
    .line 28
    :cond_0
    :goto_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 34
    .line 35
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 36
    .line 37
    :cond_1
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 41
    .line 42
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 45
    .line 46
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    goto :goto_3

    .line 51
    .line 52
    :goto_2
    :try_start_1
    const-string v3, "AudioDevice Java"

    .line 53
    .line 54
    const-string v4, "error in StopRecording "

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v4, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 65
    .line 66
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 67
    goto :goto_1

    .line 68
    :goto_3
    const/4 v0, 0x0

    .line 69
    .line 70
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    .line 71
    return v0

    .line 72
    .line 73
    :goto_4
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 79
    .line 80
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 81
    .line 82
    :cond_3
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 83
    .line 84
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 88
    throw v2
.end method

.method private enableHardwareEarback(Z)I
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
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "enableHardwareEarback "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v2, "AudioDevice Java"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lio/agora/rtc/audio/HardwareEarbackController;->enableHardwareEarback(Z)I

    .line 32
    move-result v0

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p1, " ret "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v0
.end method

.method private isHardwareEarbackSupported()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

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
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

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
