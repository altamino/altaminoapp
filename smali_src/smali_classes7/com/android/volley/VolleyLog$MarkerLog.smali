.class Lcom/android/volley/VolleyLog$MarkerLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/VolleyLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarkerLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/VolleyLog$MarkerLog$Marker;
    }
.end annotation


# static fields
.field public static final ENABLED:Z

.field private static final MIN_DURATION_FOR_LOGGING_MS:J


# instance fields
.field private mFinished:Z

.field private final mMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/VolleyLog$MarkerLog$Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 3
    .line 4
    sput-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    .line 5
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    .line 14
    return-void
.end method

.method private getTotalDuration()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    return-wide v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 21
    .line 22
    iget-wide v0, v0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    move-result v3

    .line 29
    .line 30
    add-int/lit8 v3, v3, -0x1

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 37
    .line 38
    iget-wide v2, v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 39
    sub-long/2addr v2, v0

    .line 40
    return-wide v2
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;J)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 8
    .line 9
    new-instance v7, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    move-result-wide v5

    .line 14
    move-object v1, v7

    .line 15
    move-object v2, p1

    .line 16
    move-wide v3, p2

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/android/volley/VolleyLog$MarkerLog$Marker;-><init>(Ljava/lang/String;JJ)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string p2, "Marker added to finished log"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :goto_0
    monitor-exit p0

    .line 36
    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "Request on the loose"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v1, "Marker log finalized without finish() - uncaught exit point for request"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-void
.end method

.method public declared-synchronized finish(Ljava/lang/String;)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/volley/VolleyLog$MarkerLog;->getTotalDuration()J

    .line 8
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v3, v1, v3

    .line 13
    .line 14
    if-gtz v3, :cond_0

    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 19
    const/4 v4, 0x0

    .line 20
    .line 21
    .line 22
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    check-cast v3, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 26
    .line 27
    iget-wide v5, v3, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 28
    .line 29
    const-string v3, "(%-4d ms) %s"

    .line 30
    const/4 v7, 0x2

    .line 31
    .line 32
    new-array v8, v7, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    aput-object v1, v8, v4

    .line 39
    .line 40
    aput-object p1, v8, v0

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v8}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 62
    .line 63
    iget-wide v2, v1, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 64
    .line 65
    const-string v8, "(+%-4d) [%2d] %s"

    .line 66
    const/4 v9, 0x3

    .line 67
    .line 68
    new-array v9, v9, [Ljava/lang/Object;

    .line 69
    .line 70
    sub-long v5, v2, v5

    .line 71
    .line 72
    .line 73
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    aput-object v5, v9, v4

    .line 77
    .line 78
    iget-wide v5, v1, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->thread:J

    .line 79
    .line 80
    .line 81
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    aput-object v5, v9, v0

    .line 85
    .line 86
    iget-object v1, v1, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->name:Ljava/lang/String;

    .line 87
    .line 88
    aput-object v1, v9, v7

    .line 89
    .line 90
    .line 91
    invoke-static {v8, v9}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    move-wide v5, v2

    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :goto_1
    monitor-exit p0

    .line 99
    throw p1
.end method
