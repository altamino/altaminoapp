.class public Lcom/narvii/editors/ffmpeg/FFmpegJni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "FFMPEG"

.field public static ffmpegInstalled:Z = true

.field private static progressCallbacks:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "arm"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    const-string v0, "x264-157"

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v0, "avutil"

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    .line 24
    const-string v0, "avcodec"

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    .line 29
    const-string v0, "avformat"

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    .line 34
    const-string v0, "swscale"

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    .line 39
    const-string v0, "avresample"

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    .line 44
    const-string v0, "postproc"

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    .line 49
    const-string v0, "swresample"

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    .line 54
    const-string v0, "avfilter"

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    .line 59
    const-string v0, "avdevice"

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    .line 64
    const-string v0, "ffmpeg"

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    .line 71
    sget-object v1, Lcom/narvii/editors/ffmpeg/FFmpegJni;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .line 80
    .line 81
    sput-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    .line 82
    .line 83
    sput-boolean v0, Lcom/narvii/media/PhoneImagePickerFragment;->ffmpegInstalled:Z

    .line 84
    .line 85
    :cond_0
    :goto_0
    new-instance v0, Landroid/util/LongSparseArray;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 89
    .line 90
    sput-object v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->progressCallbacks:Landroid/util/LongSparseArray;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static abort(J)V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeAbort(J)V

    .line 8
    :cond_0
    return-void
.end method

.method public static addProgressCallback(JLcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget-object v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->progressCallbacks:Landroid/util/LongSparseArray;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9
    return-void
.end method

.method public static detroyNativeThreadPool()V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeDestroyNativeThreadPool()V

    .line 8
    :cond_0
    return-void
.end method

.method public static executeFrameRetrieving(Ljava/lang/String;II)V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeExecuteFrameRetrieving(Ljava/lang/String;II)V

    .line 8
    :cond_0
    return-void
.end method

.method public static fetchStreamInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeFetchStreamInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public static getThreadId()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static initNativeThreadPool(I)V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeInitNativeThreadPool(I)V

    .line 8
    :cond_0
    return-void
.end method

.method private static native nativeAbort(J)V
.end method

.method private static native nativeDestroyNativeThreadPool()V
.end method

.method private static native nativeExecuteFrameRetrieving(Ljava/lang/String;II)V
.end method

.method private static native nativeFetchStreamInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
.end method

.method private static native nativeInitNativeThreadPool(I)V
.end method

.method private static native nativeRun([Ljava/lang/String;JIZ)I
.end method

.method public static onBitmapLoaded(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/video/services/FrameRetrieverManager;->Companion:Lcom/narvii/video/services/FrameRetrieverManager$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;->dispatchBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 6
    return-void
.end method

.method public static onProgressFromNative(FJ)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->progressCallbacks:Landroid/util/LongSparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p1, p0}, Lcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;->onProgress(F)V

    .line 15
    return-void
.end method

.method public static pollNextFrameRetrieveTask(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/video/services/FrameRetrieverManager;->Companion:Lcom/narvii/video/services/FrameRetrieverManager$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;->pollNextTask(Ljava/lang/String;)Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    const/4 p0, -0x1

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->getRealFrameTimeInMs()I

    .line 14
    move-result p0

    .line 15
    :goto_0
    return p0
.end method

.method public static removeProgressCallback(J)V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, -0x1

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->progressCallbacks:Landroid/util/LongSparseArray;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 13
    return-void
.end method

.method public static run([Ljava/lang/String;JIZ)I
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeRun([Ljava/lang/String;JIZ)I

    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, -0x1

    .line 11
    return p0
.end method
