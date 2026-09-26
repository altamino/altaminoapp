.class public Lio/agora/rtc/gl/EglRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;,
        Lio/agora/rtc/gl/EglRenderer$FrameListenerAndParams;,
        Lio/agora/rtc/gl/EglRenderer$FrameListener;
    }
.end annotation


# static fields
.field private static final LOG_INTERVAL_SEC:J = 0x4L

.field private static final MAX_SURFACE_CLEAR_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EglRenderer"


# instance fields
.field private final drawMatrix:Landroid/graphics/Matrix;

.field private drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

.field private eglBase:Lio/agora/rtc/gl/EglBase;

.field private final eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

.field private final fpsReductionLock:Ljava/lang/Object;

.field private final frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

.field private final frameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/agora/rtc/gl/EglRenderer$FrameListenerAndParams;",
            ">;"
        }
    .end annotation
.end field

.field private final frameLock:Ljava/lang/Object;

.field private framesDropped:I

.field private framesReceived:I

.field private framesRendered:I

.field private final handlerLock:Ljava/lang/Object;

.field private layoutAspectRatio:F

.field private final layoutLock:Ljava/lang/Object;

.field private final logStatisticsRunnable:Ljava/lang/Runnable;

.field private minRenderPeriodNs:J

.field private mirror:Z

.field private final name:Ljava/lang/String;

.field private nextFrameTimeNs:J

.field private pendingFrame:Lio/agora/rtc/gl/VideoFrame;

.field private renderSwapBufferTimeNs:J

.field private renderThreadHandler:Landroid/os/Handler;

.field private renderTimeNs:J

.field private final statisticsLock:Ljava/lang/Object;

.field private statisticsStartTimeNs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

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
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 25
    .line 26
    new-instance v0, Lio/agora/rtc/gl/VideoFrameDrawer;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Lio/agora/rtc/gl/VideoFrameDrawer;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 60
    .line 61
    new-instance v0, Lio/agora/rtc/gl/EglRenderer$1;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p0}, Lio/agora/rtc/gl/EglRenderer$1;-><init>(Lio/agora/rtc/gl/EglRenderer;)V

    .line 65
    .line 66
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 67
    .line 68
    new-instance v0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    .line 69
    const/4 v1, 0x0

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, p0, v1}, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;-><init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglRenderer$1;)V

    .line 73
    .line 74
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    .line 75
    .line 76
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglBase;)Lio/agora/rtc/gl/EglBase;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lio/agora/rtc/gl/EglRenderer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/gl/EglRenderer;->logStatistics()V

    .line 4
    return-void
.end method

.method static synthetic access$1000(Lio/agora/rtc/gl/EglRenderer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/gl/EglRenderer;->renderFrameOnRenderThread()V

    .line 4
    return-void
.end method

.method static synthetic access$1100(Lio/agora/rtc/gl/EglRenderer;FFFF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/agora/rtc/gl/EglRenderer;->clearSurfaceOnRenderThread(FFFF)V

    .line 4
    return-void
.end method

.method static synthetic access$200(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lio/agora/rtc/gl/EglRenderer;)Landroid/os/Handler;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic access$700(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 3
    return-object p0
.end method

.method static synthetic access$702(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/RendererCommon$GlDrawer;)Lio/agora/rtc/gl/RendererCommon$GlDrawer;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/VideoFrameDrawer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lio/agora/rtc/gl/EglRenderer;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/gl/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method private averageTimeAsString(JI)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sumTimeNs",
            "count"
        }
    .end annotation

    .line 1
    .line 2
    if-gtz p3, :cond_0

    .line 3
    .line 4
    const-string p1, "NA"

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    int-to-long v2, p3

    .line 14
    div-long/2addr p1, v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 18
    move-result-wide p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p1, " us"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    :goto_0
    return-object p1
.end method

.method private clearSurfaceOnRenderThread(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->hasSurface()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "clearSurface"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 19
    .line 20
    const/16 p1, 0x4000

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 24
    .line 25
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lio/agora/rtc/gl/EglBase;->swapBuffers()V

    .line 29
    :cond_0
    return-void
.end method

.method private createEglSurfaceInternal(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
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
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->name:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "EglRenderer"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method private logStatistics()V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 7
    monitor-enter v2

    .line 8
    .line 9
    :try_start_0
    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsStartTimeNs:J

    .line 10
    .line 11
    sub-long v3, v0, v3

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    cmp-long v5, v3, v5

    .line 16
    .line 17
    if-gtz v5, :cond_0

    .line 18
    monitor-exit v2

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 25
    int-to-long v5, v5

    .line 26
    .line 27
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    const-wide/16 v8, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 33
    move-result-wide v7

    .line 34
    mul-long/2addr v5, v7

    .line 35
    long-to-float v5, v5

    .line 36
    long-to-float v6, v3

    .line 37
    div-float/2addr v5, v6

    .line 38
    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v7, "Duration: "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, " ms. Frames received: "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    iget v3, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, ". Dropped: "

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    iget v3, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, ". Rendered: "

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    iget v3, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v3, ". Render fps: "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 94
    .line 95
    const-string v4, "%.1f"

    .line 96
    const/4 v7, 0x1

    .line 97
    .line 98
    new-array v7, v7, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 102
    move-result-object v5

    .line 103
    const/4 v8, 0x0

    .line 104
    .line 105
    aput-object v5, v7, v8

    .line 106
    .line 107
    .line 108
    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v3, ". Average render time: "

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    .line 120
    .line 121
    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v3, v4, v5}, Lio/agora/rtc/gl/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v3, ". Average swapBuffer time: "

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 136
    .line 137
    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, v3, v4, v5}, Lio/agora/rtc/gl/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v3, "."

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, v3}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/gl/EglRenderer;->resetStatistics(J)V

    .line 160
    monitor-exit v2

    .line 161
    return-void

    .line 162
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    throw v0
.end method

.method private postToRenderThread(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method

.method private renderFrameOnRenderThread()V
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v9, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 6
    .line 7
    if-nez v9, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    .line 12
    goto/16 :goto_7

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    .line 15
    iput-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 19
    .line 20
    if-eqz v0, :cond_9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->hasSurface()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 31
    monitor-enter v0

    .line 32
    .line 33
    :try_start_1
    iget-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v3, 0x7fffffffffffffffL

    .line 39
    .line 40
    cmp-long v3, v1, v3

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v10, 0x1

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    const-wide/16 v5, 0x0

    .line 48
    .line 49
    cmp-long v1, v1, v5

    .line 50
    .line 51
    if-gtz v1, :cond_3

    .line 52
    :goto_0
    move v4, v10

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    iget-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    .line 60
    .line 61
    cmp-long v3, v1, v5

    .line 62
    .line 63
    if-gez v3, :cond_4

    .line 64
    .line 65
    const-string v1, "Skipping frame rendering - fps reduction is active."

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 69
    goto :goto_1

    .line 70
    :catchall_1
    move-exception v1

    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_4
    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    .line 75
    add-long/2addr v5, v3

    .line 76
    .line 77
    iput-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    .line 78
    .line 79
    .line 80
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 81
    move-result-wide v1

    .line 82
    .line 83
    iput-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    .line 84
    goto :goto_0

    .line 85
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 89
    move-result-wide v11

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->getRotatedWidth()I

    .line 93
    move-result v0

    .line 94
    int-to-float v0, v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->getRotatedHeight()I

    .line 98
    move-result v1

    .line 99
    int-to-float v1, v1

    .line 100
    div-float/2addr v0, v1

    .line 101
    .line 102
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 103
    monitor-enter v1

    .line 104
    .line 105
    :try_start_2
    iget v2, p0, Lio/agora/rtc/gl/EglRenderer;->layoutAspectRatio:F

    .line 106
    const/4 v3, 0x0

    .line 107
    .line 108
    cmpl-float v5, v2, v3

    .line 109
    .line 110
    if-eqz v5, :cond_5

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    move v2, v0

    .line 113
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 114
    .line 115
    cmpl-float v1, v0, v2

    .line 116
    .line 117
    const/high16 v5, 0x3f800000    # 1.0f

    .line 118
    .line 119
    if-lez v1, :cond_6

    .line 120
    div-float/2addr v2, v0

    .line 121
    move v0, v5

    .line 122
    goto :goto_3

    .line 123
    :cond_6
    div-float/2addr v0, v2

    .line 124
    move v2, v5

    .line 125
    .line 126
    :goto_3
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 130
    .line 131
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 132
    .line 133
    const/high16 v6, 0x3f000000    # 0.5f

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 137
    .line 138
    iget-boolean v1, p0, Lio/agora/rtc/gl/EglRenderer;->mirror:Z

    .line 139
    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 143
    .line 144
    const/high16 v6, -0x40800000    # -1.0f

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v6, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 148
    .line 149
    :cond_7
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 153
    .line 154
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 155
    .line 156
    const/high16 v1, -0x41000000    # -0.5f

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 160
    .line 161
    if-eqz v4, :cond_8

    .line 162
    .line 163
    .line 164
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 165
    .line 166
    const/16 v0, 0x4000

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 170
    .line 171
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->frameDrawer:Lio/agora/rtc/gl/VideoFrameDrawer;

    .line 172
    .line 173
    iget-object v3, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 174
    .line 175
    iget-object v4, p0, Lio/agora/rtc/gl/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 176
    const/4 v5, 0x0

    .line 177
    const/4 v6, 0x0

    .line 178
    .line 179
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->surfaceWidth()I

    .line 183
    move-result v7

    .line 184
    .line 185
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->surfaceHeight()I

    .line 189
    move-result v8

    .line 190
    move-object v2, v9

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {v1 .. v8}, Lio/agora/rtc/gl/VideoFrameDrawer;->drawFrame(Lio/agora/rtc/gl/VideoFrame;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 197
    move-result-wide v0

    .line 198
    .line 199
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Lio/agora/rtc/gl/EglBase;->swapBuffers()V

    .line 203
    .line 204
    .line 205
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 206
    move-result-wide v2

    .line 207
    .line 208
    iget-object v4, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 209
    monitor-enter v4

    .line 210
    .line 211
    :try_start_3
    iget v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 212
    add-int/2addr v5, v10

    .line 213
    .line 214
    iput v5, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 215
    .line 216
    iget-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    .line 217
    .line 218
    sub-long v7, v2, v11

    .line 219
    add-long/2addr v5, v7

    .line 220
    .line 221
    iput-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    .line 222
    .line 223
    iget-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 224
    sub-long/2addr v2, v0

    .line 225
    add-long/2addr v5, v2

    .line 226
    .line 227
    iput-wide v5, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 228
    monitor-exit v4

    .line 229
    goto :goto_4

    .line 230
    :catchall_2
    move-exception v0

    .line 231
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 232
    throw v0

    .line 233
    .line 234
    .line 235
    :cond_8
    :goto_4
    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->release()V

    .line 236
    return-void

    .line 237
    :catchall_3
    move-exception v0

    .line 238
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 239
    throw v0

    .line 240
    :goto_5
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 241
    throw v1

    .line 242
    .line 243
    :cond_9
    :goto_6
    const-string v0, "Dropping frame - No surface"

    .line 244
    .line 245
    .line 246
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v9}, Lio/agora/rtc/gl/VideoFrame;->release()V

    .line 250
    return-void

    .line 251
    :goto_7
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 252
    throw v1
.end method

.method private resetStatistics(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentTimeNs"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iput-wide p1, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsStartTimeNs:J

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    .line 9
    .line 10
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    .line 11
    .line 12
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->framesRendered:I

    .line 13
    .line 14
    const-wide/16 p1, 0x0

    .line 15
    .line 16
    iput-wide p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderTimeNs:J

    .line 17
    .line 18
    iput-wide p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderSwapBufferTimeNs:J

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method


# virtual methods
.method public addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "listener",
            "scale"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/agora/rtc/gl/EglRenderer;->addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "listener",
            "scale",
            "drawerParam"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/agora/rtc/gl/EglRenderer;->addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;FLio/agora/rtc/gl/RendererCommon$GlDrawer;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "listener",
            "scale",
            "drawerParam",
            "applyFpsReduction"
        }
    .end annotation

    .line 3
    new-instance v6, Lio/agora/rtc/gl/EglRenderer$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/gl/EglRenderer$5;-><init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Lio/agora/rtc/gl/EglRenderer$FrameListener;FZ)V

    invoke-direct {p0, v6}, Lio/agora/rtc/gl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearImage()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Lio/agora/rtc/gl/EglRenderer;->clearImage(FFFF)V

    return-void
.end method

.method public clearImage(FFFF)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v8, Lio/agora/rtc/gl/EglRenderer$9;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/gl/EglRenderer$9;-><init>(Lio/agora/rtc/gl/EglRenderer;FFFF)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 5
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createEglSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createEglSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->setFpsReduction(F)V

    .line 6
    return-void
.end method

.method public getEglContext()Lio/agora/rtc/gl/EglBase$Context;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "sharedContext",
            "configAttributes",
            "drawer"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "Initializing EglRenderer"

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 13
    .line 14
    iput-object p3, p0, Lio/agora/rtc/gl/EglRenderer;->drawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 15
    .line 16
    new-instance p3, Landroid/os/HandlerThread;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->name:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "EglRenderer"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-direct {p3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    new-instance v1, Landroid/os/Handler;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    .line 52
    iput-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 53
    .line 54
    new-instance p3, Lio/agora/rtc/gl/EglRenderer$2;

    .line 55
    .line 56
    .line 57
    invoke-direct {p3, p0, p1, p2}, Lio/agora/rtc/gl/EglRenderer$2;-><init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglBase$Context;[I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p3}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 61
    .line 62
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 63
    .line 64
    iget-object p2, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 71
    move-result-wide p1

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/gl/EglRenderer;->resetStatistics(J)V

    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    iget-object p3, p0, Lio/agora/rtc/gl/EglRenderer;->name:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p3, "Already initialized"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p1

    .line 104
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p1
.end method

.method public onFrame(Lio/agora/rtc/gl/VideoFrame;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget v1, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    .line 6
    const/4 v2, 0x1

    .line 7
    add-int/2addr v1, v2

    .line 8
    .line 9
    iput v1, p0, Lio/agora/rtc/gl/EglRenderer;->framesReceived:I

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 11
    .line 12
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 13
    monitor-enter v1

    .line 14
    .line 15
    :try_start_1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p1, "Dropping frame - Not initialized or already released."

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 23
    monitor-exit v1

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_4

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 29
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    :try_start_2
    iget-object v3, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    move v4, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v4, 0x0

    .line 37
    .line 38
    :goto_0
    if-eqz v4, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lio/agora/rtc/gl/VideoFrame;->release()V

    .line 42
    goto :goto_1

    .line 43
    :catchall_1
    move-exception p1

    .line 44
    goto :goto_3

    .line 45
    .line 46
    :cond_2
    :goto_1
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->retain()V

    .line 50
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    .line 52
    :try_start_3
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 53
    .line 54
    new-instance v0, Lio/agora/rtc/gl/EglRenderer$7;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p0}, Lio/agora/rtc/gl/EglRenderer$7;-><init>(Lio/agora/rtc/gl/EglRenderer;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 61
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Lio/agora/rtc/gl/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 66
    monitor-enter p1

    .line 67
    .line 68
    :try_start_4
    iget v0, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    .line 69
    add-int/2addr v0, v2

    .line 70
    .line 71
    iput v0, p0, Lio/agora/rtc/gl/EglRenderer;->framesDropped:I

    .line 72
    monitor-exit p1

    .line 73
    goto :goto_2

    .line 74
    :catchall_2
    move-exception v0

    .line 75
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    throw v0

    .line 77
    :cond_3
    :goto_2
    return-void

    .line 78
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    :try_start_6
    throw p1

    .line 80
    :goto_4
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 81
    throw p1

    .line 82
    :catchall_3
    move-exception p1

    .line 83
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 84
    throw p1
.end method

.method public pauseVideo()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->setFpsReduction(F)V

    .line 5
    return-void
.end method

.method public printStackTrace()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 23
    move-result-object v1

    .line 24
    array-length v2, v1

    .line 25
    .line 26
    if-lez v2, :cond_1

    .line 27
    .line 28
    const-string v2, "EglRenderer stack trace:"

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v2}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 32
    array-length v2, v1

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    :goto_1
    if-ge v3, v2, :cond_1

    .line 36
    .line 37
    aget-object v4, v1, v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v4}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v1
.end method

.method public release()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "Releasing."

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 12
    .line 13
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 14
    monitor-enter v1

    .line 15
    .line 16
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v0, "Already released"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 24
    monitor-exit v1

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_2

    .line 28
    .line 29
    :cond_0
    new-instance v3, Lio/agora/rtc/gl/EglRenderer$3;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, p0}, Lio/agora/rtc/gl/EglRenderer$3;-><init>(Lio/agora/rtc/gl/EglRenderer;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    iget-object v3, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v4, Lio/agora/rtc/gl/EglRenderer$4;

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, p0, v2, v0}, Lio/agora/rtc/gl/EglRenderer$4;-><init>(Lio/agora/rtc/gl/EglRenderer;Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 56
    const/4 v0, 0x0

    .line 57
    .line 58
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 59
    .line 60
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 61
    monitor-enter v2

    .line 62
    .line 63
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lio/agora/rtc/gl/VideoFrame;->release()V

    .line 69
    .line 70
    iput-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->pendingFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 71
    goto :goto_0

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .line 76
    const-string v0, "Releasing done."

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 80
    return-void

    .line 81
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    throw v0

    .line 83
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    throw v0
.end method

.method public releaseEglSurface(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "completionCallback"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 7
    .line 8
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v2, Lio/agora/rtc/gl/EglRenderer$8;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, p0, p1}, Lio/agora/rtc/gl/EglRenderer$8;-><init>(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    return-void

    .line 38
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method

.method public removeFrameListener(Lio/agora/rtc/gl/EglRenderer$FrameListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 23
    .line 24
    new-instance v1, Lio/agora/rtc/gl/EglRenderer$6;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0, v0, p1}, Lio/agora/rtc/gl/EglRenderer$6;-><init>(Lio/agora/rtc/gl/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lio/agora/rtc/gl/EglRenderer$FrameListener;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v1}, Lio/agora/rtc/gl/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    .line 39
    const-string/jumbo v0, "removeFrameListener must not be called on the render thread."

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1
.end method

.method public renderFrame(Lio/agora/rtc/gl/VideoFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/agora/rtc/gl/EglRenderer;->onFrame(Lio/agora/rtc/gl/VideoFrame;)V

    .line 4
    return-void
.end method

.method public setFpsReduction(F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fps"
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
    .line 8
    const-string/jumbo v1, "setFpsReduction: "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 24
    monitor-enter v0

    .line 25
    .line 26
    :try_start_0
    iget-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    cmpg-float v3, p1, v3

    .line 30
    .line 31
    if-gtz v3, :cond_0

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-wide v3, 0x7fffffffffffffffL

    .line 37
    .line 38
    iput-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    const-wide/16 v4, 0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 49
    move-result-wide v3

    .line 50
    long-to-float v3, v3

    .line 51
    div-float/2addr v3, p1

    .line 52
    float-to-long v3, v3

    .line 53
    .line 54
    iput-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    .line 55
    .line 56
    :goto_0
    iget-wide v3, p0, Lio/agora/rtc/gl/EglRenderer;->minRenderPeriodNs:J

    .line 57
    .line 58
    cmp-long p1, v3, v1

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 64
    move-result-wide v1

    .line 65
    .line 66
    iput-wide v1, p0, Lio/agora/rtc/gl/EglRenderer;->nextFrameTimeNs:J

    .line 67
    :cond_1
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1
.end method

.method public setLayoutAspectRatio(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutAspectRatio"
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
    .line 8
    const-string/jumbo v1, "setLayoutAspectRatio: "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 24
    monitor-enter v0

    .line 25
    .line 26
    :try_start_0
    iput p1, p0, Lio/agora/rtc/gl/EglRenderer;->layoutAspectRatio:F

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public setMirror(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mirror"
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
    .line 8
    const-string/jumbo v1, "setMirror: "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lio/agora/rtc/gl/EglRenderer;->logD(Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 24
    monitor-enter v0

    .line 25
    .line 26
    :try_start_0
    iput-boolean p1, p0, Lio/agora/rtc/gl/EglRenderer;->mirror:Z

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method
