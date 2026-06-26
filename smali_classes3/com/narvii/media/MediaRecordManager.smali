.class public Lcom/narvii/media/MediaRecordManager;
.super Ljava/lang/Object;
.source "MediaRecordManager.java"


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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/narvii/media/MediaRecordManager$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaRecordManager$1;-><init>(Lcom/narvii/media/MediaRecordManager;)V

    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->volumeMonitorRunnable:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/narvii/media/MediaRecordManager$2;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaRecordManager$2;-><init>(Lcom/narvii/media/MediaRecordManager;)V

    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->recordTimeRunnable:Ljava/lang/Runnable;

    .line 42
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "recorder"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager;->mRecordDir:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/MediaRecordManager;)Landroid/media/MediaRecorder;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/media/MediaRecordManager;)Lcom/narvii/media/IMediaRecordListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/media/MediaRecordManager;->iMediaRecordListener:Lcom/narvii/media/IMediaRecordListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/media/MediaRecordManager;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordStartTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/narvii/media/MediaRecordManager;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/media/MediaRecordManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/media/MediaRecordManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/media/MediaRecordManager;->releaseRecorder()V

    return-void
.end method

.method private releaseRecorder()V
    .locals 2

    const/4 v0, 0x0

    .line 167
    :try_start_0
    iput-boolean v0, p0, Lcom/narvii/media/MediaRecordManager;->mIsRecording:Z

    .line 168
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/media/MediaRecordManager;->volumeMonitorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/media/MediaRecordManager;->recordTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->iMediaRecordListener:Lcom/narvii/media/IMediaRecordListener;

    .line 171
    iget-object v1, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 174
    :cond_0
    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 175
    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "finish release failed"

    .line 177
    invoke-static {v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteRecordDir()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 73
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public destroyRecord()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/narvii/media/MediaRecordManager;->releaseRecorder()V

    return-void
.end method

.method public finishRecord()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/narvii/media/MediaRecordManager;->finishRecord(Z)V

    return-void
.end method

.method public finishRecord(Z)V
    .locals 5

    .line 149
    invoke-virtual {p0}, Lcom/narvii/media/MediaRecordManager;->getRecordDuration()J

    move-result-wide v0

    .line 150
    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/narvii/media/MediaRecordManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "finish stop failed"

    .line 154
    invoke-static {v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 157
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/media/MediaRecordManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->iMediaRecordListener:Lcom/narvii/media/IMediaRecordListener;

    if-eqz v2, :cond_1

    .line 158
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

    .line 159
    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->iMediaRecordListener:Lcom/narvii/media/IMediaRecordListener;

    iget-object v3, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1, p1}, Lcom/narvii/media/IMediaRecordListener;->onRecordFinish(Landroid/net/Uri;JZ)V

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/MediaRecordManager;->releaseRecorder()V

    return-void
.end method

.method public getRecordDuration()J
    .locals 4

    .line 134
    iget-boolean v0, p0, Lcom/narvii/media/MediaRecordManager;->mIsRecording:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    return-wide v1

    .line 140
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/media/MediaRecordManager;->mRecordStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isRecording()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/narvii/media/MediaRecordManager;->mIsRecording:Z

    return v0
.end method

.method public startRecord(Lcom/narvii/media/IMediaRecordListener;)V
    .locals 5

    .line 78
    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager;->iMediaRecordListener:Lcom/narvii/media/IMediaRecordListener;

    .line 79
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/narvii/media/MediaRecordManager;->destroyRecord()V

    .line 84
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 86
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 89
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 90
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 91
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v2, 0xbb80

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 92
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x5622

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 93
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v2, 0x2bf20

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 94
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/narvii/media/MediaRecordManager$3;

    invoke-direct {v2, p0}, Lcom/narvii/media/MediaRecordManager$3;-><init>(Lcom/narvii/media/MediaRecordManager;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 102
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/narvii/media/MediaRecordManager$4;

    invoke-direct {v2, p0}, Lcom/narvii/media/MediaRecordManager$4;-><init>(Lcom/narvii/media/MediaRecordManager;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 112
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->mRecordDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".aac"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;

    .line 113
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/narvii/media/MediaRecordManager;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 116
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 117
    iput-boolean v1, p0, Lcom/narvii/media/MediaRecordManager;->mIsRecording:Z

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordStartTime:J

    if-eqz p1, :cond_2

    .line 120
    iget-wide v0, p0, Lcom/narvii/media/MediaRecordManager;->mRecordStartTime:J

    invoke-interface {p1, v0, v1}, Lcom/narvii/media/IMediaRecordListener;->onRecordStart(J)V

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager;->volumeMonitorRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 123
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager;->recordTimeRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager;->mContext:Landroid/content/Context;

    const v0, 0x7f0f0680

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 129
    invoke-direct {p0}, Lcom/narvii/media/MediaRecordManager;->releaseRecorder()V

    :goto_0
    return-void
.end method
