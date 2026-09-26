.class Lcom/google/firebase/perf/session/gauges/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ly4/a;


# instance fields
.field private final activityManager:Landroid/app/ActivityManager;

.field private final appContext:Landroid/content/Context;

.field private final memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private final runtime:Ljava/lang/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ly4/a;->e()Ly4/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/perf/session/gauges/i;->logger:Ly4/a;

    .line 7
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/perf/session/gauges/i;-><init>(Ljava/lang/Runtime;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Runtime;Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/i;->runtime:Ljava/lang/Runtime;

    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/i;->appContext:Landroid/content/Context;

    const-string p1, "activity"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/i;->activityManager:Landroid/app/ActivityManager;

    .line 4
    new-instance p2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/i;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 5
    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/perf/util/k;->BYTES:Lcom/google/firebase/perf/util/k;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/i;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 5
    .line 6
    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/util/k;->a(J)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/firebase/perf/util/n;->c(J)I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public b()I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/perf/util/k;->BYTES:Lcom/google/firebase/perf/util/k;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/i;->runtime:Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/util/k;->a(J)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/google/firebase/perf/util/n;->c(J)I

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public c()I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/perf/util/k;->MEGABYTES:Lcom/google/firebase/perf/util/k;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/i;->activityManager:Landroid/app/ActivityManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 8
    move-result v1

    .line 9
    int-to-long v1, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/util/k;->a(J)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/google/firebase/perf/util/n;->c(J)I

    .line 17
    move-result v0

    .line 18
    return v0
.end method
