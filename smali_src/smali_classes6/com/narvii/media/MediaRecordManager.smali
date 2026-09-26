.class public Lcom/narvii/media/MediaRecordManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENCODE_BIT_RATE:I = 0xbb80

.field public static final MAX_DURATION:I = 0x2bf20

.field public static final SAMPLING_RATE:I = 0x5622


# instance fields
.field private iMediaRecordListener:Lcom/narvii/media/IMediaRecordListener;

.field private mContext:Landroid/content/Context;

.field private mIsRecording:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mRecordDir:Ljava/io/File;

.field private mRecordFile:Ljava/io/File;

.field private mRecordStartTime:J

.field recordTimeRunnable:Ljava/lang/Runnable;

.field volumeMonitorRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/media/MediaRecordManager$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaRecordManager$1;-><init>(Lcom/narvii/media/MediaRecordManager;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->volumeMonitorRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/media/MediaRecordManager$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaRecordManager$2;-><init>(Lcom/narvii/media/MediaRecordManager;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->recordTimeRunnable:Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    new-instance p1, Ljava/io/File;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "recorder"

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager;->mRecordDir:Ljava/io/File;

    .line 39
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/media/MediaRecordManager;)Lcom/narvii/media/IMediaRecordListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/MediaRecordManager;->iMediaRecordListener:Lcom/narvii/media/IMediaRecordListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/media/MediaRecordManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/MediaRecordManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/media/MediaRecordManager;)Landroid/media/MediaRecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/media/MediaRecordManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordStartTime:J

    return-wide v0
.end method

.method static bridge synthetic e(Lcom/narvii/media/MediaRecordManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/MediaRecordManager;->releaseRecorder()V

    return-void
.end method

.method private releaseRecorder()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/narvii/media/MediaRecordManager;->mIsRecording:Z

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/media/MediaRecordManager;->volumeMonitorRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/media/MediaRecordManager;->recordTimeRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->iMediaRecordListener:Lcom/narvii/media/IMediaRecordListener;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 26
    .line 27
    :cond_0
    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :catch_0
    const-string v0, "finish release failed"

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method public deleteRecordDir()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordDir:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 8
    :cond_0
    return-void
.end method

.method public destroyRecord()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/narvii/media/MediaRecordManager;->releaseRecorder()V

    .line 19
    return-void
.end method

.method public finishRecord()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/media/MediaRecordManager;->finishRecord(Z)V

    return-void
.end method

.method public finishRecord(Z)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/narvii/media/MediaRecordManager;->getRecordDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/narvii/media/MediaRecordManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 4
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "finish stop failed"

    .line 5
    invoke-static {v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/media/MediaRecordManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->iMediaRecordListener:Lcom/narvii/media/IMediaRecordListener;

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "record"

    invoke-static {v3, v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->iMediaRecordListener:Lcom/narvii/media/IMediaRecordListener;

    iget-object v3, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;

    .line 8
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1, p1}, Lcom/narvii/media/IMediaRecordListener;->onRecordFinish(Landroid/net/Uri;JZ)V

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/MediaRecordManager;->releaseRecorder()V

    return-void
.end method

.method public getRecordDuration()J
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/media/MediaRecordManager;->mIsRecording:Z

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-wide v1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return-wide v1

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/narvii/media/MediaRecordManager;->mRecordStartTime:J

    .line 19
    sub-long/2addr v0, v2

    .line 20
    return-wide v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/media/MediaRecordManager;->mIsRecording:Z

    return v0
.end method

.method public startRecord(Lcom/narvii/media/IMediaRecordListener;)V
    .locals 5

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager;->iMediaRecordListener:Lcom/narvii/media/IMediaRecordListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/media/MediaRecordManager;->destroyRecord()V

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroid/media/MediaRecorder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 27
    const/4 v2, 0x2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 33
    const/4 v2, 0x3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 39
    .line 40
    .line 41
    const v2, 0xbb80

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 47
    .line 48
    const/16 v2, 0x5622

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 54
    .line 55
    .line 56
    const v2, 0x2bf20

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 62
    .line 63
    new-instance v2, Lcom/narvii/media/MediaRecordManager$3;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, p0}, Lcom/narvii/media/MediaRecordManager$3;-><init>(Lcom/narvii/media/MediaRecordManager;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 72
    .line 73
    new-instance v2, Lcom/narvii/media/MediaRecordManager$4;

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, p0}, Lcom/narvii/media/MediaRecordManager$4;-><init>(Lcom/narvii/media/MediaRecordManager;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordDir:Ljava/io/File;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 88
    .line 89
    new-instance v0, Ljava/io/File;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->mRecordDir:Ljava/io/File;

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 100
    move-result-object v4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 104
    move-result-object v4

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v4, ".aac"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    .line 118
    .line 119
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .line 121
    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 141
    .line 142
    iput-boolean v1, p0, Lcom/narvii/media/MediaRecordManager;->mIsRecording:Z

    .line 143
    .line 144
    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 146
    move-result-wide v0

    .line 147
    .line 148
    iput-wide v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordStartTime:J

    .line 149
    .line 150
    if-eqz p1, :cond_2

    .line 151
    .line 152
    .line 153
    invoke-interface {p1, v0, v1}, Lcom/narvii/media/IMediaRecordListener;->onRecordStart(J)V

    .line 154
    .line 155
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager;->volumeMonitorRunnable:Ljava/lang/Runnable;

    .line 156
    .line 157
    .line 158
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 159
    .line 160
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager;->recordTimeRunnable:Ljava/lang/Runnable;

    .line 161
    .line 162
    .line 163
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_2

    .line 165
    .line 166
    .line 167
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    if-eqz v0, :cond_3

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 178
    .line 179
    :cond_3
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    const v0, 0x7f12072b

    .line 183
    const/4 v1, 0x0

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 191
    .line 192
    .line 193
    invoke-direct {p0}, Lcom/narvii/media/MediaRecordManager;->releaseRecorder()V

    .line 194
    :goto_2
    return-void
.end method
