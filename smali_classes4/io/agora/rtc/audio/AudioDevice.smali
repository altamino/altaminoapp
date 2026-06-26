.class Lio/agora/rtc/audio/AudioDevice;
.super Ljava/lang/Object;
.source "AudioDevice.java"


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

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioDevice Java"

    .line 35
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    .line 36
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_MaxRecPlay10msBlocks:I

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 39
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 49
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 50
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    .line 52
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 53
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    const/4 v2, 0x0

    .line 54
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    .line 55
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    .line 57
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    .line 58
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 59
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 60
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    .line 61
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    .line 62
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 63
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    .line 64
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    .line 65
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    .line 66
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    .line 67
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    .line 68
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 69
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    const-wide/16 v3, 0x0

    .line 70
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 72
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    const-wide/16 v5, 0xa

    .line 73
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 74
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    .line 75
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    .line 76
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 78
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 79
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    .line 80
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 81
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 82
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 83
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    const/16 v1, 0x1e00

    .line 87
    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    .line 88
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "failed to allocate bytebuffer"

    .line 90
    invoke-static {v0, v3, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-array v0, v1, [B

    .line 93
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    new-array v0, v1, [B

    .line 94
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    return-void
.end method

.method private BuiltInAECIsAvailable()Z
    .locals 3

    const-string v0, "AudioDevice Java"

    .line 104
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 105
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v1, "Unable to query Audio Effect: Acoustic Echo Cancellation"

    .line 109
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Unable to create AEC object "

    .line 107
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private BuiltInAECIsEnabled()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    return v0
.end method

.method private CheckAudioStatus(I)I
    .locals 5

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_5

    .line 259
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const-string v2, "AudioDevice Java"

    const/4 v3, -0x1

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v4, "audio"

    .line 262
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    goto :goto_0

    :cond_0
    const-string p1, "CheckAudioStatus error"

    .line 264
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    :goto_0
    if-nez p1, :cond_5

    .line 269
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_4

    .line 271
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz p1, :cond_2

    .line 272
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    .line 274
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object p1

    .line 275
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    .line 276
    invoke-virtual {v0}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    move-result v0

    if-eq v0, v3, :cond_3

    const/16 v1, 0x409

    goto :goto_1

    :cond_4
    const-string p1, "CheckAudioStatus unkonwn error"

    .line 281
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_5
    return v1
.end method

.method private EnableBuiltInAEC(Z)Z
    .locals 3

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    return v1

    .line 140
    :cond_0
    iput-boolean p1, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    .line 142
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0, p1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result p1

    const-string v0, "AudioDevice Java"

    if-eqz p1, :cond_1

    const-string p1, "AcousticEchoCanceler.setEnabled failed"

    .line 145
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 148
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AcousticEchoCanceler.getEnabled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private GetAudioMode()I
    .locals 2

    .line 853
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 855
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 858
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string v0, "AudioDevice Java"

    const-string v1, "Could not change audio routing - no audio manager"

    .line 859
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 863
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    return v0
.end method

.method private GetNativePlayDelay()I
    .locals 5

    .line 892
    iget-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v0, -0x1

    .line 893
    iput-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 895
    :cond_0
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    if-gez v0, :cond_1

    const/4 v0, -0x1

    .line 896
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    .line 898
    :cond_1
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    iget-wide v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method private GetNativeSampleRate()I
    .locals 4

    .line 869
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 871
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 874
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const v1, 0xac44

    if-nez v0, :cond_1

    const-string v0, "AudioDevice Java"

    const-string v2, "Could not set audio mode - no audio manager"

    .line 875
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 879
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    const-string v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 881
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 884
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_2
    return v1
.end method

.method private GetPlayoutMaxVolume()I
    .locals 2

    .line 767
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 769
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    :cond_0
    const/4 v0, -0x1

    .line 774
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 775
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method private GetPlayoutVolume()I
    .locals 2

    .line 749
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 751
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    :cond_0
    const/4 v0, -0x1

    .line 756
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 757
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method private GetPreferedSampleRate()I
    .locals 3

    .line 118
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    const-string v1, "audio"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 122
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AudioDevice Java"

    const-string v2, "GetPreferedSampleRate error"

    .line 125
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/16 v0, 0x3e80

    :cond_1
    return v0
.end method

.method private GetUnderrunCount()I
    .locals 2

    .line 642
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 643
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->GetUnderrunCountOnNougatOrHigher()I

    move-result v0

    return v0

    .line 646
    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->GetUnderrunCountOnLowerThanNougat()I

    move-result v0

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

    const-string v0, "AudioDevice Java"

    .line 654
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1

    .line 656
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "getUnderrun fail "

    .line 658
    invoke-static {v0, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 660
    :goto_0
    iget v3, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    sub-int v3, v1, v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    .line 664
    :goto_1
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    if-lez v2, :cond_1

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android AudioTrack underrun count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method private InitPlayback(IIII)I
    .locals 15

    move-object v1, p0

    move/from16 v0, p1

    move/from16 v9, p2

    move/from16 v2, p3

    .line 294
    iput v2, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    mul-int v2, p4, v0

    mul-int v2, v2, v9

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    .line 295
    div-int/lit16 v2, v2, 0x3e8

    const/16 v4, 0xc

    const/4 v5, 0x4

    if-ne v9, v3, :cond_0

    const/16 v6, 0xc

    goto :goto_0

    :cond_0
    const/4 v6, 0x4

    .line 298
    :goto_0
    invoke-static {v0, v6, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v6

    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Java minimum playback buffer size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", profiledMiniOutBufferSize is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " stream type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "AudioDevice Java"

    invoke-static {v10, v7}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v6, v6, 0x2

    if-ge v6, v2, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    move v11, v6

    :goto_1
    const/4 v12, 0x0

    .line 311
    iput v12, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Java playback buffer size is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", duration is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v6, v11, 0x3e8

    mul-int v7, v0, v9

    mul-int/lit8 v7, v7, 0x2

    div-int/2addr v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 317
    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    const/4 v2, 0x0

    .line 318
    iput-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    :cond_2
    const/4 v13, -0x1

    .line 322
    :try_start_0
    new-instance v14, Landroid/media/AudioTrack;

    iget v6, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    if-ne v9, v3, :cond_3

    const/16 v5, 0xc

    :cond_3
    const/4 v7, 0x2

    const/4 v8, 0x1

    move-object v2, v14

    move v3, v6

    move/from16 v4, p1

    move v6, v7

    move v7, v11

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v14, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    .line 334
    iput v9, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    .line 335
    iput v11, v1, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    .line 336
    iput v12, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 338
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java playback not initialized "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    .line 343
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java play sample rate is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_5

    const-string v2, "audio"

    .line 347
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 351
    :cond_5
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_6

    return v12

    .line 356
    :cond_6
    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "Unable to new AudioTrack: "

    .line 329
    invoke-static {v10, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v13
.end method

.method private InitRecording(III)I
    .locals 12

    const/16 v0, 0xc

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    const/16 v3, 0xc

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    .line 161
    :goto_0
    invoke-static {p2, v3, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Java minimum recording buffer size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AudioDevice Java"

    invoke-static {v5, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, p2, 0x5

    .line 170
    div-int/lit16 v4, v4, 0xc8

    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    .line 173
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 174
    invoke-virtual {v4}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 175
    iput-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 178
    :cond_1
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v4, :cond_2

    .line 179
    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    .line 180
    iput-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 184
    :cond_2
    :try_start_0
    new-instance v4, Landroid/media/AudioRecord;

    if-ne p3, v2, :cond_3

    const/16 v9, 0xc

    goto :goto_1

    :cond_3
    const/16 v9, 0x10

    :goto_1
    const/4 v10, 0x2

    move-object v6, v4

    move v7, p1

    move v8, p2

    move v11, v3

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Java recording not initialized "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    .line 202
    :cond_4
    iput p2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    .line 203
    iput p3, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    .line 204
    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    .line 205
    iput v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    const/4 p1, 0x0

    .line 206
    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Java recording sample rate set to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AcousticEchoCanceler.isAvailable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->BuiltInAECIsAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->BuiltInAECIsAvailable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 211
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    return p1

    .line 214
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result p1

    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 215
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez p1, :cond_6

    const-string p1, "AcousticEchoCanceler.create failed"

    .line 216
    invoke-static {v5, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 219
    :cond_6
    invoke-virtual {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object p1

    .line 220
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AcousticEchoCanceler name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", implementor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", uuid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-boolean p1, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    invoke-direct {p0, p1}, Lio/agora/rtc/audio/AudioDevice;->EnableBuiltInAEC(Z)Z

    .line 228
    :goto_2
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Unable to new AudioRecord: "

    .line 192
    invoke-static {v5, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method private PlayAudio(I)I
    .locals 14

    const-string v0, "AudioDevice Java"

    .line 463
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    .line 465
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 p1, -0x2

    .line 546
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 471
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v2, -0x13

    .line 473
    :try_start_2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v4, "Set play thread priority failed: "

    .line 476
    invoke-static {v0, v4, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    :goto_0
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 482
    :cond_1
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 483
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    invoke-virtual {v2, v4, v1, p1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    .line 484
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 489
    iget v4, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    shr-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 490
    iget v4, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    add-int/2addr v4, v2

    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 492
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v4

    iget v5, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    mul-int v4, v4, v5

    .line 494
    iget v5, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    const/4 v6, 0x2

    div-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x30

    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    if-le v5, v7, :cond_2

    iget v5, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    div-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x30

    goto :goto_1

    :cond_2
    iget v5, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    :goto_1
    iput v5, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 495
    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_3

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    :cond_3
    if-lez v4, :cond_4

    .line 498
    iget-boolean v5, p0, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    if-nez v5, :cond_4

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caculated the first render TS = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " pos = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v7, v4, 0x2

    div-int/lit8 v7, v7, 0x30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "ms delay "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    iget v9, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iput-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    .line 504
    :cond_4
    iget-boolean v5, p0, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    if-eqz v5, :cond_5

    .line 505
    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    long-to-int v5, v7

    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    add-int/2addr v5, v7

    iput v5, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    .line 507
    :cond_5
    iget v5, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    if-ge v4, v5, :cond_6

    .line 508
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 510
    :cond_6
    iget v5, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    iput v5, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 511
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 513
    iget-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    if-nez v4, :cond_7

    .line 514
    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    :cond_7
    if-eq v2, p1, :cond_a

    .line 520
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v4, 0x14

    if-le p1, v4, :cond_8

    .line 546
    :goto_2
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 522
    :cond_8
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing AudioTrack! Restart AudioTrack "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 524
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    .line 525
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    const/4 p1, 0x0

    .line 526
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 528
    :try_start_5
    new-instance p1, Landroid/media/AudioTrack;

    iget v8, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    iget v9, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    iget v3, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    if-ne v3, v6, :cond_9

    const/16 v3, 0xc

    const/16 v10, 0xc

    goto :goto_3

    :cond_9
    const/4 v3, 0x4

    const/4 v10, 0x4

    :goto_3
    const/4 v11, 0x2

    iget v12, p0, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    const/4 v13, 0x1

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 535
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_6
    const-string v3, "restart audio fail"

    .line 537
    invoke-static {v0, v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    :try_start_7
    const-string v2, "PlayAudio got fatal error "

    .line 542
    invoke-static {v0, v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 546
    :cond_a
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :goto_4
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 547
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private QuerySpeakerStatus()I
    .locals 2

    .line 681
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 683
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 686
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string v0, "AudioDevice Java"

    const-string v1, "Could not get audio routing - no audio manager"

    .line 687
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 690
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    return v1

    .line 692
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    .line 694
    :cond_3
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 696
    :cond_4
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private RecordAudio(I)I
    .locals 12

    const-string v0, "AudioDevice Java"

    .line 554
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 556
    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 558
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 p1, -0x4

    .line 635
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 564
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/16 v2, -0x13

    .line 566
    :try_start_2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v5, "Set rec thread priority failed: "

    .line 569
    invoke-static {v0, v5, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    :goto_0
    iput-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 575
    :cond_1
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 576
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    invoke-virtual {v2, v5, v4, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    .line 578
    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 579
    iget-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const-wide/16 v7, 0xa

    cmp-long v9, v5, v7

    if-nez v9, :cond_5

    .line 580
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_2

    .line 581
    new-instance v5, Landroid/media/AudioTimestamp;

    invoke-direct {v5}, Landroid/media/AudioTimestamp;-><init>()V

    .line 582
    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v6, v5, v4}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    .line 583
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-wide v5, v5, Landroid/media/AudioTimestamp;->nanoTime:J

    sub-long/2addr v9, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v9, v5

    div-long/2addr v9, v5

    iput-wide v9, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 584
    iget-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const-wide/16 v9, 0x32

    cmp-long v11, v5, v9

    if-lez v11, :cond_3

    .line 585
    iput-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    goto :goto_1

    .line 588
    :cond_2
    iput-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 590
    :cond_3
    :goto_1
    iget v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    if-nez v5, :cond_4

    .line 591
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    sub-long/2addr v5, v7

    long-to-int v6, v5

    div-int/lit16 v6, v6, 0x3e8

    div-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 594
    :cond_4
    iget-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 597
    :cond_5
    iget-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_7

    .line 598
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_6

    .line 600
    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v5

    .line 601
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frames  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " recDelay "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " caculated frames delay "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v7}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    div-int/2addr v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 603
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_recDelay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :goto_2
    iget-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    :cond_7
    if-eq v2, p1, :cond_a

    .line 611
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_8

    .line 612
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading AudioRecord! AudioRecord.read returns "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_8
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 615
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    .line 616
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    const/4 p1, 0x0

    .line 617
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 618
    new-instance p1, Landroid/media/AudioRecord;

    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    const/16 v1, 0xc

    const/16 v8, 0xc

    goto :goto_3

    :cond_9
    const/16 v1, 0x10

    const/16 v8, 0x10

    :goto_3
    const/4 v9, 0x2

    iget v10, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 624
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    .line 625
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    .line 626
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 635
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    const/16 v1, -0xa

    :try_start_4
    const-string v2, "RecordAudio try failed: "

    .line 631
    invoke-static {v0, v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 635
    :cond_a
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :goto_4
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 636
    throw p1
.end method

.method private SetAudioMode(I)I
    .locals 14

    const-string v0, "AudioDevice Java"

    const/4 v1, 0x0

    .line 784
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 785
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    const-string v3, "audio"

    .line 786
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 789
    :cond_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_1

    const-string p1, "Could not change audio routing - no audio manager"

    .line 790
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 793
    :cond_1
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 794
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 795
    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    .line 796
    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v7, v2, v5

    int-to-double v8, v5

    int-to-double v10, v2

    .line 798
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    .line 800
    :try_start_1
    iget-object v10, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->getMode()I

    move-result v10

    if-ne v10, p1, :cond_2

    return v1

    .line 803
    :cond_2
    iget-boolean v10, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_a

    .line 804
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_audioManager.getMode() = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v12}, Landroid/media/AudioManager;->getMode()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " target mode = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "factorX = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "mMediaMaxVolume="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "mCommMaxVolume="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "mCurrMediaVolume="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "mCurrCommVolume="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "delta"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const/16 v5, 0xc

    if-ne p1, v3, :cond_6

    if-ge v7, v5, :cond_3

    sub-int v2, v4, v7

    if-ge v2, v11, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    int-to-double v4, v4

    .line 811
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    add-double/2addr v4, v12

    double-to-int v2, v4

    :cond_4
    :goto_0
    if-ge v2, v11, :cond_5

    const/4 v2, 0x1

    .line 814
    :cond_5
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Java AudioDevice] set voice call vol = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;)V

    .line 815
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v1, v2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_6
    if-nez p1, :cond_a

    if-ge v7, v5, :cond_7

    add-int v4, v6, v7

    if-ge v4, v2, :cond_8

    move v2, v4

    goto :goto_1

    :cond_7
    int-to-double v4, v6

    .line 821
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v8

    add-double/2addr v4, v12

    double-to-int v2, v4

    :cond_8
    :goto_1
    if-ge v2, v11, :cond_9

    const/4 v2, 0x1

    .line 824
    :cond_9
    :try_start_3
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3, v2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 825
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Java AudioDevice] set music vol = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;)V

    :cond_a
    :goto_2
    if-eqz p1, :cond_e

    if-eq p1, v11, :cond_d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_c

    if-eq p1, v3, :cond_b

    .line 842
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_3

    .line 839
    :cond_b
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_3

    .line 836
    :cond_c
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_3

    .line 833
    :cond_d
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v11}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_3

    .line 830
    :cond_e
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "set audio mode failed! "

    .line 846
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v1
.end method

.method private SetPlayoutSpeaker(Z)I
    .locals 2

    .line 705
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 707
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 710
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string p1, "AudioDevice Java"

    const-string v0, "Could not change audio routing - no audio manager"

    .line 711
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 714
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method private SetPlayoutVolume(I)I
    .locals 3

    .line 723
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 725
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    :cond_0
    const/4 v0, -0x1

    .line 730
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 731
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/16 v1, 0xff

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    mul-int p1, p1, v0

    .line 735
    div-int/lit16 v0, p1, 0xff

    .line 737
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {p1, v1, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method private StartPlayback()I
    .locals 4

    const-wide/16 v0, 0x0

    .line 362
    iput-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    const/4 v1, -0x1

    .line 365
    :try_start_0
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 366
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 367
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 368
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 377
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    return v0

    :catch_0
    move-exception v0

    const-string v2, "AudioDevice Java"

    const-string v3, "startplayback fail"

    .line 373
    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_1
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return v1
.end method

.method private StartRecording()I
    .locals 5

    const-string v0, "AudioDevice Java"

    const/4 v1, -0x2

    .line 235
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-nez v2, :cond_0

    return v1

    .line 238
    :cond_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording start time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    const/4 v2, 0x0

    .line 241
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    const-wide/16 v3, 0xa

    .line 242
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    return v2

    :catch_0
    move-exception v2

    const-string v3, "failed to startRecording Exception"

    .line 248
    invoke-static {v0, v3, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_1
    move-exception v1

    const-string v2, "failed to startRecording"

    .line 245
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method private StopPlayback()I
    .locals 6

    const-string v0, "AudioDevice Java"

    const-wide/16 v1, 0x0

    .line 418
    iput-wide v1, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 419
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 421
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    .line 422
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3, v5}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_0

    .line 424
    :cond_0
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3, v5, v5}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 427
    :goto_0
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 429
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    .line 431
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V

    .line 435
    :cond_1
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    .line 436
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "Stop playback fail"

    .line 441
    invoke-static {v0, v4, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 446
    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 447
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 448
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 450
    :cond_2
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 451
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    .line 454
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    return v0

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "Unable to stop playback: "

    .line 438
    invoke-static {v0, v4, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, -0x1

    .line 445
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v3, :cond_3

    .line 446
    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V

    .line 447
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    .line 448
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 450
    :cond_3
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 451
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 445
    :goto_2
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v3, :cond_4

    .line 446
    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V

    .line 447
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    .line 448
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 450
    :cond_4
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 451
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 452
    throw v0
.end method

.method private StopRecording()I
    .locals 5

    .line 383
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 386
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 389
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 392
    :cond_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v2, :cond_1

    .line 393
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v2}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 394
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 397
    :cond_1
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 398
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "AudioDevice Java"

    const-string v4, "error in StopRecording "

    .line 400
    invoke-static {v3, v4, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_2

    .line 405
    :goto_0
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 406
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 408
    :cond_2
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 409
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    return v0

    .line 404
    :goto_1
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v3, :cond_3

    .line 405
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 406
    iput-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 408
    :cond_3
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 409
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 410
    throw v2
.end method
