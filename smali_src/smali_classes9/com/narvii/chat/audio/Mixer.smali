.class public Lcom/narvii/chat/audio/Mixer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/audio/Mixer$RecordThread;,
        Lcom/narvii/chat/audio/Mixer$MixerListener;
    }
.end annotation


# static fields
.field public static final LEVEL_INTERVAL:I = 0xc8

.field static final PERM:[F


# instance fields
.field audioFormat:I

.field audioSource:I

.field public audioVolumn:F

.field buffer:[S

.field buffer2:[S

.field bufferCount:I

.field final bufferLock:Ljava/lang/Object;

.field channels:I

.field echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

.field public level:F

.field levelMax:I

.field levelTime:J

.field public listener:Lcom/narvii/chat/audio/Mixer$MixerListener;

.field public micVolumn:F

.field minBufferSize:I

.field record:Landroid/media/AudioRecord;

.field sampleRate:I

.field started:Z

.field thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/chat/audio/Mixer;->PERM:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3ecccccd    # 0.4f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->bufferLock:Ljava/lang/Object;

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/chat/audio/Mixer;->audioVolumn:F

    .line 17
    .line 18
    iput p1, p0, Lcom/narvii/chat/audio/Mixer;->sampleRate:I

    .line 19
    .line 20
    iput p2, p0, Lcom/narvii/chat/audio/Mixer;->audioSource:I

    .line 21
    .line 22
    iput p3, p0, Lcom/narvii/chat/audio/Mixer;->channels:I

    .line 23
    const/4 p2, 0x1

    .line 24
    const/4 v0, 0x2

    .line 25
    .line 26
    if-eq p3, p2, :cond_1

    .line 27
    .line 28
    if-ne p3, v0, :cond_0

    .line 29
    .line 30
    const/16 p2, 0xc

    .line 31
    .line 32
    iput p2, p0, Lcom/narvii/chat/audio/Mixer;->audioFormat:I

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 39
    throw p1

    .line 40
    .line 41
    :cond_1
    const/16 p2, 0x10

    .line 42
    .line 43
    iput p2, p0, Lcom/narvii/chat/audio/Mixer;->audioFormat:I

    .line 44
    .line 45
    :goto_0
    iget p2, p0, Lcom/narvii/chat/audio/Mixer;->audioFormat:I

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 49
    move-result p1

    .line 50
    .line 51
    iput p1, p0, Lcom/narvii/chat/audio/Mixer;->minBufferSize:I

    .line 52
    return-void
.end method


# virtual methods
.method protected onLevelIndicator(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->listener:Lcom/narvii/chat/audio/Mixer$MixerListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/chat/audio/Mixer$MixerListener;->onLevelIndicator(F)V

    .line 8
    :cond_0
    return-void
.end method

.method protected onMixedBuffer([SII)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->listener:Lcom/narvii/chat/audio/Mixer$MixerListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/chat/audio/Mixer$MixerListener;->onMixedBuffer([SII)V

    .line 8
    :cond_0
    return-void
.end method

.method public pushMixBuffer([SII)V
    .locals 6

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->bufferLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    .line 8
    :try_start_0
    iget v1, p0, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    cmpl-float v1, v1, v2

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/narvii/chat/audio/Mixer;->started:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->buffer2:[S

    .line 22
    .line 23
    iget v3, p0, Lcom/narvii/chat/audio/Mixer;->minBufferSize:I

    .line 24
    .line 25
    div-int/lit8 v3, v3, 0x2

    .line 26
    .line 27
    iget v4, p0, Lcom/narvii/chat/audio/Mixer;->sampleRate:I

    .line 28
    .line 29
    iget v5, p0, Lcom/narvii/chat/audio/Mixer;->channels:I

    .line 30
    mul-int/2addr v4, v5

    .line 31
    .line 32
    mul-int/lit16 v4, v4, 0xc8

    .line 33
    .line 34
    div-int/lit16 v4, v4, 0x3e8

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result v3

    .line 39
    .line 40
    add-int v4, p3, v3

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    array-length v5, v1

    .line 44
    .line 45
    if-ge v5, v4, :cond_3

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_6

    .line 49
    .line 50
    :cond_2
    :goto_0
    new-array v1, v4, [S

    .line 51
    .line 52
    :cond_3
    iget v4, p0, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 56
    move-result v3

    .line 57
    .line 58
    if-lez v3, :cond_4

    .line 59
    .line 60
    iget-object v4, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 61
    .line 62
    iget v5, p0, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 63
    sub-int/2addr v5, v3

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/chat/audio/Mixer;->buffer2:[S

    .line 74
    .line 75
    iput-object v1, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 76
    add-int/2addr v3, p3

    .line 77
    .line 78
    iput v3, p0, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 79
    goto :goto_5

    .line 80
    .line 81
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 82
    .line 83
    iput v2, p0, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 84
    .line 85
    if-eqz v1, :cond_6

    .line 86
    array-length v3, v1

    .line 87
    .line 88
    if-ge v3, p3, :cond_7

    .line 89
    .line 90
    :cond_6
    new-array v1, p3, [S

    .line 91
    .line 92
    iput-object v1, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 93
    .line 94
    .line 95
    :cond_7
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    move v3, v2

    .line 97
    .line 98
    :goto_2
    if-ge v3, p3, :cond_a

    .line 99
    .line 100
    add-int v4, p2, v3

    .line 101
    .line 102
    aget-short v4, p1, v4

    .line 103
    int-to-float v4, v4

    .line 104
    .line 105
    iget v5, p0, Lcom/narvii/chat/audio/Mixer;->audioVolumn:F

    .line 106
    mul-float/2addr v4, v5

    .line 107
    float-to-int v4, v4

    .line 108
    .line 109
    const/16 v5, -0x8000

    .line 110
    .line 111
    if-ge v4, v5, :cond_8

    .line 112
    :goto_3
    move v4, v5

    .line 113
    goto :goto_4

    .line 114
    .line 115
    :cond_8
    const/16 v5, 0x7fff

    .line 116
    .line 117
    if-le v4, v5, :cond_9

    .line 118
    goto :goto_3

    .line 119
    :cond_9
    :goto_4
    int-to-short v4, v4

    .line 120
    .line 121
    aput-short v4, v1, v3

    .line 122
    .line 123
    add-int/lit8 v3, v3, 0x1

    .line 124
    goto :goto_2

    .line 125
    .line 126
    .line 127
    :cond_a
    invoke-virtual {p0, v1, v2, p3}, Lcom/narvii/chat/audio/Mixer;->onMixedBuffer([SII)V

    .line 128
    :goto_5
    monitor-exit v0

    .line 129
    return-void

    .line 130
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw p1
.end method

.method public start()Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/media/AudioRecord;

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/chat/audio/Mixer;->audioSource:I

    .line 9
    .line 10
    iget v3, p0, Lcom/narvii/chat/audio/Mixer;->sampleRate:I

    .line 11
    .line 12
    iget v4, p0, Lcom/narvii/chat/audio/Mixer;->audioFormat:I

    .line 13
    const/4 v5, 0x2

    .line 14
    .line 15
    iget v6, p0, Lcom/narvii/chat/audio/Mixer;->minBufferSize:I

    .line 16
    move-object v1, v0

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/chat/audio/Mixer;->echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x1

    .line 39
    .line 40
    if-ne v0, v2, :cond_3

    .line 41
    .line 42
    iget v0, p0, Lcom/narvii/chat/audio/Mixer;->audioSource:I

    .line 43
    const/4 v1, 0x7

    .line 44
    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    .line 57
    move-result v0

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 74
    .line 75
    new-instance v0, Lcom/narvii/chat/audio/Mixer$RecordThread;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/audio/Mixer$RecordThread;-><init>(Lcom/narvii/chat/audio/Mixer;Landroid/media/AudioRecord;)V

    .line 81
    .line 82
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->thread:Ljava/lang/Thread;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    .line 87
    iput-boolean v2, p0, Lcom/narvii/chat/audio/Mixer;->started:Z

    .line 88
    return v2

    .line 89
    .line 90
    :cond_3
    iput-object v1, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/narvii/chat/audio/Mixer;->thread:Ljava/lang/Thread;

    .line 93
    const/4 v0, 0x0

    .line 94
    .line 95
    iput-boolean v0, p0, Lcom/narvii/chat/audio/Mixer;->started:Z

    .line 96
    return v0
.end method

.method public stop()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->thread:Ljava/lang/Thread;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->bufferLock:Ljava/lang/Object;

    .line 29
    monitor-enter v1

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    :try_start_0
    iput v2, p0, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->buffer2:[S

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/narvii/chat/audio/Mixer;->started:Z

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v0
.end method
