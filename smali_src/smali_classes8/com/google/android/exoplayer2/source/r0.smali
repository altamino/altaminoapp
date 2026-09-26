.class public final Lcom/google/android/exoplayer2/source/r0;
.super Lcom/google/android/exoplayer2/source/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/q0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/r0$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000


# instance fields
.field private final continueLoadingCheckIntervalBytes:I

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

.field private final loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

.field private final localConfiguration:Lcom/google/android/exoplayer2/i2$h;

.field private final mediaItem:Lcom/google/android/exoplayer2/i2;

.field private final progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/l0$a;

.field private timelineDurationUs:J

.field private timelineIsLive:Z

.field private timelineIsPlaceholder:Z

.field private timelineIsSeekable:Z

.field private transferListener:Lcom/google/android/exoplayer2/upstream/m0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/l0$a;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/upstream/f0;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/i2$h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/r0;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r0;->mediaItem:Lcom/google/android/exoplayer2/i2;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/r0;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/r0;->progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/l0$a;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/r0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/r0;->loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    iput p6, p0, Lcom/google/android/exoplayer2/source/r0;->continueLoadingCheckIntervalBytes:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/r0;->timelineIsPlaceholder:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/r0;->timelineDurationUs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/l0$a;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/upstream/f0;ILcom/google/android/exoplayer2/source/r0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/r0;-><init>(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/l0$a;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/upstream/f0;I)V

    return-void
.end method

.method private z()V
    .locals 9

    .line 1
    .line 2
    new-instance v8, Lcom/google/android/exoplayer2/source/z0;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/r0;->timelineDurationUs:J

    .line 5
    .line 6
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/r0;->timelineIsSeekable:Z

    .line 7
    const/4 v4, 0x0

    .line 8
    .line 9
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/r0;->timelineIsLive:Z

    .line 10
    const/4 v6, 0x0

    .line 11
    .line 12
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/r0;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 13
    move-object v0, v8

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/z0;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/i2;)V

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/r0;->timelineIsPlaceholder:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/exoplayer2/source/r0$a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0, v8}, Lcom/google/android/exoplayer2/source/r0$a;-><init>(Lcom/google/android/exoplayer2/source/r0;Lcom/google/android/exoplayer2/z3;)V

    .line 26
    move-object v8, v0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/source/a;->x(Lcom/google/android/exoplayer2/z3;)V

    .line 30
    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/y;
    .locals 14

    .line 1
    move-object v12, p0

    .line 2
    .line 3
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/r0;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    .line 7
    move-result-object v2

    .line 8
    .line 9
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/r0;->transferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/k;->b(Lcom/google/android/exoplayer2/upstream/m0;)V

    .line 15
    .line 16
    :cond_0
    new-instance v13, Lcom/google/android/exoplayer2/source/q0;

    .line 17
    .line 18
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/r0;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/google/android/exoplayer2/i2$h;->uri:Landroid/net/Uri;

    .line 21
    .line 22
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/r0;->progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/l0$a;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->u()Lcom/google/android/exoplayer2/analytics/t1;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/source/l0$a;->a(Lcom/google/android/exoplayer2/analytics/t1;)Lcom/google/android/exoplayer2/source/l0;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    iget-object v4, v12, Lcom/google/android/exoplayer2/source/r0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->m(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/drm/v$a;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    iget-object v6, v12, Lcom/google/android/exoplayer2/source/r0;->loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->p(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/h0$a;

    .line 42
    move-result-object v7

    .line 43
    .line 44
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/r0;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 45
    .line 46
    iget-object v10, v0, Lcom/google/android/exoplayer2/i2$h;->customCacheKey:Ljava/lang/String;

    .line 47
    .line 48
    iget v11, v12, Lcom/google/android/exoplayer2/source/r0;->continueLoadingCheckIntervalBytes:I

    .line 49
    move-object v0, v13

    .line 50
    move-object v8, p0

    .line 51
    .line 52
    move-object/from16 v9, p2

    .line 53
    .line 54
    .line 55
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/q0;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/source/l0;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/upstream/f0;Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/q0$b;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/String;I)V

    .line 56
    return-object v13
.end method

.method public f(Lcom/google/android/exoplayer2/source/y;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/q0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/q0;->S()V

    .line 6
    return-void
.end method

.method public j()Lcom/google/android/exoplayer2/i2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r0;->mediaItem:Lcom/google/android/exoplayer2/i2;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public q(JZZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/r0;->timelineDurationUs:J

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/r0;->timelineIsPlaceholder:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/r0;->timelineDurationUs:J

    .line 18
    .line 19
    cmp-long v0, v0, p1

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/r0;->timelineIsSeekable:Z

    .line 24
    .line 25
    if-ne v0, p3, :cond_1

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/r0;->timelineIsLive:Z

    .line 28
    .line 29
    if-ne v0, p4, :cond_1

    .line 30
    return-void

    .line 31
    .line 32
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/r0;->timelineDurationUs:J

    .line 33
    .line 34
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/r0;->timelineIsSeekable:Z

    .line 35
    .line 36
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/source/r0;->timelineIsLive:Z

    .line 37
    const/4 p1, 0x0

    .line 38
    .line 39
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/r0;->timelineIsPlaceholder:Z

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/r0;->z()V

    .line 43
    return-void
.end method

.method protected w(Lcom/google/android/exoplayer2/upstream/m0;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/upstream/m0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r0;->transferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/r0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/x;->prepare()V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/r0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->u()Lcom/google/android/exoplayer2/analytics/t1;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/x;->d(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/t1;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/r0;->z()V

    .line 30
    return-void
.end method

.method protected y()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/x;->release()V

    .line 6
    return-void
.end method
