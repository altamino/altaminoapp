.class public Lcom/narvii/editors/ffmpeg/FFmpegJni;
.super Ljava/lang/Object;
.source "FFmpegJni.java"


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

    .line 22
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "x264-157"

    .line 24
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avutil"

    .line 25
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avcodec"

    .line 26
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avformat"

    .line 27
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "swscale"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avresample"

    .line 29
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "postproc"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "swresample"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avfilter"

    .line 32
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avdevice"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "ffmpeg"

    .line 34
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 36
    sget-object v1, Lcom/narvii/editors/ffmpeg/FFmpegJni;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    .line 38
    sput-boolean v0, Lcom/narvii/media/PhoneImagePickerFragment;->ffmpegInstalled:Z

    .line 43
    :cond_0
    :goto_0
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->progressCallbacks:Landroid/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abort(J)V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeAbort(J)V

    :cond_0
    return-void
.end method

.method public static addProgressCallback(JLcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->progressCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public static detroyNativeThreadPool()V
    .locals 1

    .line 73
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeDestroyNativeThreadPool()V

    :cond_0
    return-void
.end method

.method public static executeFrameRetrieving(Ljava/lang/String;II)V
    .locals 1

    .line 79
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1, p2}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeExecuteFrameRetrieving(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static fetchStreamInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
    .locals 1

    .line 54
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeFetchStreamInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getThreadId()J
    .locals 2

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static initNativeThreadPool(I)V
    .locals 1

    .line 67
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeInitNativeThreadPool(I)V

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

    .line 106
    sget-object v0, Lcom/narvii/video/services/FrameRetrieverManager;->Companion:Lcom/narvii/video/services/FrameRetrieverManager$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;->dispatchBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static onProgressFromNative(FJ)V
    .locals 1

    .line 110
    sget-object v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->progressCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;

    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-interface {p1, p0}, Lcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;->onProgress(F)V

    return-void
.end method

.method public static pollNextFrameRetrieveTask(Ljava/lang/String;)I
    .locals 1

    .line 101
    sget-object v0, Lcom/narvii/video/services/FrameRetrieverManager;->Companion:Lcom/narvii/video/services/FrameRetrieverManager$Companion;

    invoke-virtual {v0, p0}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;->pollNextTask(Ljava/lang/String;)Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->getRealFrameTimeInMs()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static removeProgressCallback(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-void

    .line 128
    :cond_0
    sget-object v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->progressCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->remove(J)V

    return-void
.end method

.method public static run([Ljava/lang/String;JIZ)I
    .locals 1

    .line 46
    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->nativeRun([Ljava/lang/String;JIZ)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
