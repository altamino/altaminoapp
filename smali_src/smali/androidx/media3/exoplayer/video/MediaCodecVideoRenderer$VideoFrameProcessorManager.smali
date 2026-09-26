.class final Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoFrameProcessorManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;
    }
.end annotation


# static fields
.field private static final EARLY_THRESHOLD_US:J = 0xc350L


# instance fields
.field private canEnableFrameProcessing:Z

.field private currentFrameFormat:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private currentSurfaceAndSize:Landroid/util/Pair;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Landroidx/media3/common/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

.field private handler:Landroid/os/Handler;

.field private initialStreamOffsetUs:J

.field private inputFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lastCodecBufferPresentationTimestampUs:J

.field private final pendingFrameFormats:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroidx/media3/common/Format;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingOutputSizeChange:Z

.field private pendingOutputSizeChangeNotificationTimeUs:J

.field private processedFrameSize:Landroidx/media3/common/VideoSize;

.field private final processedFramesTimestampsUs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private processedLastFrame:Z

.field private registeredLastFrame:Z

.field private releasedLastFrame:Z

.field private final renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

.field private videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoFrameProcessorMaxPendingFrameCount:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayDeque;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayDeque;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    .line 22
    const/4 p1, -0x1

    .line 23
    .line 24
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    .line 25
    const/4 p1, 0x1

    .line 26
    .line 27
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->lastCodecBufferPresentationTimestampUs:J

    .line 35
    .line 36
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFrameSize:Landroidx/media3/common/VideoSize;

    .line 39
    .line 40
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J

    .line 41
    .line 42
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    .line 43
    return-void
.end method

.method private k(JZ)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Landroidx/media3/common/VideoFrameProcessor;->e(J)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    const-wide/16 v3, 0x3e8

    .line 24
    mul-long/2addr v1, v3

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;J)J

    .line 28
    .line 29
    const-wide/16 v0, -0x2

    .line 30
    .line 31
    cmp-long p1, p1, v0

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1()V

    .line 39
    .line 40
    :cond_0
    if-eqz p3, :cond_1

    .line 41
    const/4 p1, 0x1

    .line 42
    .line 43
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1d

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 23
    .line 24
    if-lt v0, v1, :cond_0

    .line 25
    .line 26
    const-string v0, "allow-frame-drop"

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 31
    :cond_0
    return-object p1
.end method

.method public b()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/common/VideoFrameProcessor;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Landroidx/media3/common/VideoFrameProcessor;->d(Landroidx/media3/common/SurfaceInfo;)V

    .line 13
    .line 14
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 15
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/media3/common/VideoFrameProcessor;->flush()V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    .line 23
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    .line 33
    :cond_0
    return-void
.end method

.method public d(JJ)J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 18
    add-long/2addr p1, p3

    .line 19
    .line 20
    iget-wide p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    .line 21
    sub-long/2addr p1, p3

    .line 22
    return-wide p1
.end method

.method public e()Landroid/view/Surface;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/common/VideoFrameProcessor;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/media3/common/VideoFrameProcessor;->b()Landroid/view/Surface;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/common/util/Size;

    .line 9
    .line 10
    sget-object v1, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public h(Landroidx/media3/common/Format;J)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return v2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    .line 22
    return v2

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {}, Landroidx/media3/common/util/Util;->w()Landroid/os/Handler;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 31
    .line 32
    iget-object v3, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z1(Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e1()Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    iget v3, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    int-to-float v3, v3

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->a(F)Landroidx/media3/common/Effect;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p2

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->b()Landroidx/media3/common/VideoFrameProcessor$Factory;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/content/Context;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    check-cast v4, Ljava/util/List;

    .line 78
    .line 79
    sget-object v5, Landroidx/media3/common/DebugViewProvider;->NONE:Landroidx/media3/common/DebugViewProvider;

    .line 80
    .line 81
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v6, Landroidx/media3/common/ColorInfo;

    .line 84
    .line 85
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 86
    move-object v7, v0

    .line 87
    .line 88
    check-cast v7, Landroidx/media3/common/ColorInfo;

    .line 89
    const/4 v8, 0x0

    .line 90
    .line 91
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    new-instance v9, Landroidx/media3/exoplayer/audio/a0;

    .line 97
    .line 98
    .line 99
    invoke-direct {v9, v0}, Landroidx/media3/exoplayer/audio/a0;-><init>(Landroid/os/Handler;)V

    .line 100
    .line 101
    new-instance v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;

    .line 102
    .line 103
    .line 104
    invoke-direct {v10, p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Landroidx/media3/common/Format;)V

    .line 105
    .line 106
    .line 107
    invoke-interface/range {v2 .. v10}, Landroidx/media3/common/VideoFrameProcessor$Factory;->a(Landroid/content/Context;Ljava/util/List;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/ColorInfo;ZLjava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)Landroidx/media3/common/VideoFrameProcessor;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v1}, Landroidx/media3/common/VideoFrameProcessor;->c(I)V

    .line 114
    .line 115
    iput-wide p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 118
    .line 119
    if-eqz p2, :cond_3

    .line 120
    .line 121
    iget-object p3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p3, Landroidx/media3/common/util/Size;

    .line 124
    .line 125
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 126
    .line 127
    new-instance v2, Landroidx/media3/common/SurfaceInfo;

    .line 128
    .line 129
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p2, Landroid/view/Surface;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Landroidx/media3/common/util/Size;->b()I

    .line 135
    move-result v3

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Landroidx/media3/common/util/Size;->a()I

    .line 139
    move-result p3

    .line 140
    .line 141
    .line 142
    invoke-direct {v2, p2, v3, p3}, Landroidx/media3/common/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v0, v2}, Landroidx/media3/common/VideoFrameProcessor;->d(Landroidx/media3/common/SurfaceInfo;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->o(Landroidx/media3/common/Format;)V

    .line 149
    return v1

    .line 150
    .line 151
    :goto_1
    iget-object p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 152
    .line 153
    const/16 v0, 0x1b58

    .line 154
    .line 155
    .line 156
    invoke-static {p3, p2, p1, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 157
    move-result-object p1

    .line 158
    throw p1
.end method

.method public i(Landroidx/media3/common/Format;JZ)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    move v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/media3/common/VideoFrameProcessor;->g()I

    .line 24
    move-result v0

    .line 25
    .line 26
    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    .line 27
    .line 28
    if-ge v0, v1, :cond_4

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Landroidx/media3/common/VideoFrameProcessor;->f()V

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    .line 59
    .line 60
    .line 61
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 72
    .line 73
    iput-boolean v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    .line 74
    .line 75
    iput-wide p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->lastCodecBufferPresentationTimestampUs:J

    .line 76
    :cond_3
    return v3

    .line 77
    :cond_4
    return v2
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Landroidx/media3/common/util/Util;->c0(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 11
    move-result p1

    .line 12
    .line 13
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    .line 14
    return-void
.end method

.method public l(JJ)V
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-wide/from16 v11, p1

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_8

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x1

    .line 27
    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    move v15, v14

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v15, v13

    .line 32
    .line 33
    :goto_1
    iget-object v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    check-cast v1, Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 49
    move-result-wide v16

    .line 50
    .line 51
    iget-wide v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    .line 52
    .line 53
    add-long v8, v16, v1

    .line 54
    .line 55
    iget-object v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 59
    move-result-wide v2

    .line 60
    .line 61
    const-wide/16 v18, 0x3e8

    .line 62
    .line 63
    mul-long v6, v2, v18

    .line 64
    .line 65
    move-wide/from16 v2, p1

    .line 66
    .line 67
    move-wide/from16 v4, p3

    .line 68
    .line 69
    move-wide/from16 v20, v8

    .line 70
    move v10, v15

    .line 71
    .line 72
    .line 73
    invoke-static/range {v1 .. v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;JJJJZ)J

    .line 74
    move-result-wide v1

    .line 75
    .line 76
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z

    .line 77
    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    .line 84
    move-result v3

    .line 85
    .line 86
    if-ne v3, v14, :cond_1

    .line 87
    move v13, v14

    .line 88
    .line 89
    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v11, v12, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;JJ)Z

    .line 93
    move-result v3

    .line 94
    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    const-wide/16 v1, -0x1

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1, v2, v13}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->k(JZ)V

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_2
    if-eqz v15, :cond_8

    .line 105
    .line 106
    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 107
    .line 108
    .line 109
    invoke-static {v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)J

    .line 110
    move-result-wide v3

    .line 111
    .line 112
    cmp-long v3, v11, v3

    .line 113
    .line 114
    if-nez v3, :cond_3

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    .line 119
    :cond_3
    const-wide/32 v3, 0xc350

    .line 120
    .line 121
    cmp-long v3, v1, v3

    .line 122
    .line 123
    if-lez v3, :cond_4

    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :cond_4
    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 128
    .line 129
    move-wide/from16 v14, v20

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v14, v15}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->h(J)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 136
    move-result-wide v3

    .line 137
    .line 138
    mul-long v1, v1, v18

    .line 139
    add-long/2addr v3, v1

    .line 140
    .line 141
    iget-object v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v3, v4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b(J)J

    .line 145
    move-result-wide v1

    .line 146
    .line 147
    .line 148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 149
    move-result-wide v3

    .line 150
    .line 151
    sub-long v3, v1, v3

    .line 152
    .line 153
    div-long v5, v3, v18

    .line 154
    .line 155
    iget-object v4, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 156
    .line 157
    move-wide/from16 v7, p3

    .line 158
    move v9, v13

    .line 159
    .line 160
    .line 161
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c2(JJZ)Z

    .line 162
    move-result v3

    .line 163
    .line 164
    if-eqz v3, :cond_5

    .line 165
    .line 166
    const-wide/16 v1, -0x2

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v1, v2, v13}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->k(JZ)V

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_5
    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 177
    move-result v3

    .line 178
    .line 179
    if-nez v3, :cond_6

    .line 180
    .line 181
    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 185
    move-result-object v3

    .line 186
    .line 187
    check-cast v3, Landroid/util/Pair;

    .line 188
    .line 189
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v3, Ljava/lang/Long;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 195
    move-result-wide v3

    .line 196
    .line 197
    cmp-long v3, v14, v3

    .line 198
    .line 199
    if-lez v3, :cond_6

    .line 200
    .line 201
    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 205
    move-result-object v3

    .line 206
    .line 207
    check-cast v3, Landroid/util/Pair;

    .line 208
    .line 209
    iput-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    .line 210
    .line 211
    :cond_6
    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 212
    .line 213
    iget-object v4, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    .line 214
    .line 215
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 216
    move-object v7, v4

    .line 217
    .line 218
    check-cast v7, Landroidx/media3/common/Format;

    .line 219
    move-wide v8, v1

    .line 220
    move-object v2, v3

    .line 221
    .line 222
    move-wide/from16 v3, v16

    .line 223
    move-wide v5, v8

    .line 224
    .line 225
    .line 226
    invoke-static/range {v2 .. v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;JJLandroidx/media3/common/Format;)V

    .line 227
    .line 228
    iget-wide v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J

    .line 229
    .line 230
    cmp-long v1, v1, v14

    .line 231
    .line 232
    if-ltz v1, :cond_7

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 238
    .line 239
    iput-wide v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J

    .line 240
    .line 241
    iget-object v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 242
    .line 243
    iget-object v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFrameSize:Landroidx/media3/common/VideoSize;

    .line 244
    .line 245
    .line 246
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/common/VideoSize;)V

    .line 247
    .line 248
    .line 249
    :cond_7
    invoke-direct {v0, v8, v9, v13}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->k(JZ)V

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    :cond_8
    :goto_2
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    return v0
.end method

.method public n()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/common/VideoFrameProcessor;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/media3/common/VideoFrameProcessor;->release()V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 34
    const/4 v0, 0x1

    .line 35
    .line 36
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    .line 37
    return-void
.end method

.method public o(Landroidx/media3/common/Format;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/common/VideoFrameProcessor;

    .line 9
    .line 10
    new-instance v1, Landroidx/media3/common/FrameInfo$Builder;

    .line 11
    .line 12
    iget v2, p1, Landroidx/media3/common/Format;->width:I

    .line 13
    .line 14
    iget v3, p1, Landroidx/media3/common/Format;->height:I

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Landroidx/media3/common/FrameInfo$Builder;-><init>(II)V

    .line 18
    .line 19
    iget v2, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroidx/media3/common/FrameInfo$Builder;->b(F)Landroidx/media3/common/FrameInfo$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/media3/common/FrameInfo$Builder;->a()Landroidx/media3/common/FrameInfo;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroidx/media3/common/VideoFrameProcessor;->a(Landroidx/media3/common/FrameInfo;)V

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->inputFormat:Landroidx/media3/common/Format;

    .line 33
    .line 34
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    const/4 p1, 0x0

    .line 38
    .line 39
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    .line 40
    .line 41
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z

    .line 42
    .line 43
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    .line 44
    :cond_0
    return-void
.end method

.method public p(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/view/Surface;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 17
    .line 18
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroidx/media3/common/util/Size;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Landroidx/media3/common/VideoFrameProcessor;

    .line 48
    .line 49
    new-instance v1, Landroidx/media3/common/SurfaceInfo;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroidx/media3/common/util/Size;->b()I

    .line 53
    move-result v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/media3/common/util/Size;->a()I

    .line 57
    move-result p2

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, p1, v2, p2}, Landroidx/media3/common/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Landroidx/media3/common/VideoFrameProcessor;->d(Landroidx/media3/common/SurfaceInfo;)V

    .line 64
    :cond_1
    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    return-void
.end method
