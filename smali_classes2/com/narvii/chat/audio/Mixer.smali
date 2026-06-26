.class public Lcom/narvii/chat/audio/Mixer;
.super Ljava/lang/Object;
.source "Mixer.java"


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

    .line 16
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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->bufferLock:Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    iput v0, p0, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    .line 46
    iput v0, p0, Lcom/narvii/chat/audio/Mixer;->audioVolumn:F

    .line 49
    iput p1, p0, Lcom/narvii/chat/audio/Mixer;->sampleRate:I

    .line 50
    iput p2, p0, Lcom/narvii/chat/audio/Mixer;->audioSource:I

    .line 51
    iput p3, p0, Lcom/narvii/chat/audio/Mixer;->channels:I

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-eq p3, p2, :cond_1

    if-ne p3, v0, :cond_0

    const/16 p2, 0xc

    .line 57
    iput p2, p0, Lcom/narvii/chat/audio/Mixer;->audioFormat:I

    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const/16 p2, 0x10

    .line 54
    iput p2, p0, Lcom/narvii/chat/audio/Mixer;->audioFormat:I

    .line 62
    :goto_0
    iget p2, p0, Lcom/narvii/chat/audio/Mixer;->audioFormat:I

    invoke-static {p1, p2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/audio/Mixer;->minBufferSize:I

    return-void
.end method


# virtual methods
.method protected onLevelIndicator(F)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->listener:Lcom/narvii/chat/audio/Mixer$MixerListener;

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0, p1}, Lcom/narvii/chat/audio/Mixer$MixerListener;->onLevelIndicator(F)V

    :cond_0
    return-void
.end method

.method protected onMixedBuffer([SII)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->listener:Lcom/narvii/chat/audio/Mixer$MixerListener;

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/chat/audio/Mixer$MixerListener;->onMixedBuffer([SII)V

    :cond_0
    return-void
.end method

.method public pushMixBuffer([SII)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->bufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget v1, p0, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/narvii/chat/audio/Mixer;->started:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->buffer2:[S

    .line 139
    iget v2, p0, Lcom/narvii/chat/audio/Mixer;->minBufferSize:I

    div-int/lit8 v2, v2, 0x2

    iget v4, p0, Lcom/narvii/chat/audio/Mixer;->sampleRate:I

    iget v5, p0, Lcom/narvii/chat/audio/Mixer;->channels:I

    mul-int v4, v4, v5

    mul-int/lit16 v4, v4, 0xc8

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v4, p3, v2

    if-eqz v1, :cond_2

    .line 141
    array-length v5, v1

    if-ge v5, v4, :cond_3

    .line 142
    :cond_2
    new-array v1, v4, [S

    .line 144
    :cond_3
    iget v4, p0, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_4

    .line 151
    iget-object v4, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    iget v5, p0, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    :cond_4
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget-object p1, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    iput-object p1, p0, Lcom/narvii/chat/audio/Mixer;->buffer2:[S

    .line 155
    iput-object v1, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    add-int/2addr v2, p3

    .line 156
    iput v2, p0, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    goto :goto_3

    .line 119
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 120
    iput v3, p0, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    if-eqz v1, :cond_6

    .line 121
    array-length v2, v1

    if-ge v2, p3, :cond_7

    .line 122
    :cond_6
    new-array v1, p3, [S

    .line 123
    iput-object v1, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 125
    :cond_7
    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_a

    add-int v4, p2, v2

    .line 127
    aget-short v4, p1, v4

    int-to-float v4, v4

    .line 128
    iget v5, p0, Lcom/narvii/chat/audio/Mixer;->audioVolumn:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    const/16 v5, 0x7fff

    const/16 v6, -0x8000

    if-ge v4, v6, :cond_8

    const/16 v4, -0x8000

    goto :goto_2

    :cond_8
    if-le v4, v5, :cond_9

    const/16 v4, 0x7fff

    :cond_9
    :goto_2
    int-to-short v4, v4

    .line 134
    aput-short v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_a
    invoke-virtual {p0, v1, v3, p3}, Lcom/narvii/chat/audio/Mixer;->onMixedBuffer([SII)V

    .line 158
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public start()Z
    .locals 7

    .line 66
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/narvii/chat/audio/Mixer;->audioSource:I

    iget v3, p0, Lcom/narvii/chat/audio/Mixer;->sampleRate:I

    iget v4, p0, Lcom/narvii/chat/audio/Mixer;->audioFormat:I

    const/4 v5, 0x2

    iget v6, p0, Lcom/narvii/chat/audio/Mixer;->minBufferSize:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 71
    iput-object v1, p0, Lcom/narvii/chat/audio/Mixer;->echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 74
    iget v0, p0, Lcom/narvii/chat/audio/Mixer;->audioSource:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 75
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 77
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v0, v2}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 82
    new-instance v0, Lcom/narvii/chat/audio/Mixer$RecordThread;

    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/audio/Mixer$RecordThread;-><init>(Lcom/narvii/chat/audio/Mixer;Landroid/media/AudioRecord;)V

    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->thread:Ljava/lang/Thread;

    .line 83
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    iput-boolean v2, p0, Lcom/narvii/chat/audio/Mixer;->started:Z

    return v2

    .line 87
    :cond_3
    iput-object v1, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 88
    iput-object v1, p0, Lcom/narvii/chat/audio/Mixer;->thread:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/narvii/chat/audio/Mixer;->started:Z

    return v0
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->thread:Ljava/lang/Thread;

    .line 96
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 98
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->echoCancler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 102
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 103
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->record:Landroid/media/AudioRecord;

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/audio/Mixer;->bufferLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 106
    :try_start_0
    iput v2, p0, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 107
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 108
    iput-object v0, p0, Lcom/narvii/chat/audio/Mixer;->buffer2:[S

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iput-boolean v2, p0, Lcom/narvii/chat/audio/Mixer;->started:Z

    return-void

    :catchall_0
    move-exception v0

    .line 109
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
