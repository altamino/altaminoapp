.class public final Lkotlinx/coroutines/scheduling/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BlockingContext:Lkotlinx/coroutines/scheduling/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CORE_POOL_SIZE:I

.field public static final DEFAULT_SCHEDULER_NAME:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IDLE_WORKER_KEEP_ALIVE_NS:J

.field public static final MAX_POOL_SIZE:I

.field public static final NonBlockingContext:Lkotlinx/coroutines/scheduling/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TASK_NON_BLOCKING:I = 0x0

.field public static final TASK_PROBABLY_BLOCKING:I = 0x1

.field public static final WORK_STEALING_TIME_RESOLUTION_NS:J

.field public static schedulerTimeSource:Lkotlinx/coroutines/scheduling/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    .line 2
    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    .line 3
    .line 4
    const-string v1, "DefaultDispatcher"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/j0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Lkotlinx/coroutines/scheduling/l;->DEFAULT_SCHEDULER_NAME:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "kotlinx.coroutines.scheduler.resolution.ns"

    .line 13
    .line 14
    .line 15
    const-wide/32 v2, 0x186a0

    .line 16
    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    const-wide/16 v6, 0x0

    .line 20
    .line 21
    const/16 v8, 0xc

    .line 22
    const/4 v9, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static/range {v1 .. v9}, Lkotlinx/coroutines/internal/j0;->h(Ljava/lang/String;JJJILjava/lang/Object;)J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    sput-wide v0, Lkotlinx/coroutines/scheduling/l;->WORK_STEALING_TIME_RESOLUTION_NS:J

    .line 29
    .line 30
    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlinx/coroutines/internal/j0;->a()I

    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x2

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lj8/m;->e(II)I

    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    const/4 v5, 0x0

    .line 42
    .line 43
    const/16 v6, 0x8

    .line 44
    const/4 v7, 0x0

    .line 45
    .line 46
    .line 47
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/j0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 48
    move-result v0

    .line 49
    .line 50
    sput v0, Lkotlinx/coroutines/scheduling/l;->CORE_POOL_SIZE:I

    .line 51
    .line 52
    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 53
    .line 54
    .line 55
    const v2, 0x1ffffe

    .line 56
    const/4 v3, 0x0

    .line 57
    .line 58
    .line 59
    const v4, 0x1ffffe

    .line 60
    const/4 v5, 0x4

    .line 61
    const/4 v6, 0x0

    .line 62
    .line 63
    .line 64
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/j0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 65
    move-result v0

    .line 66
    .line 67
    sput v0, Lkotlinx/coroutines/scheduling/l;->MAX_POOL_SIZE:I

    .line 68
    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 70
    .line 71
    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    .line 72
    .line 73
    const-wide/16 v2, 0x3c

    .line 74
    .line 75
    const-wide/16 v4, 0x0

    .line 76
    .line 77
    const-wide/16 v6, 0x0

    .line 78
    .line 79
    .line 80
    invoke-static/range {v1 .. v9}, Lkotlinx/coroutines/internal/j0;->h(Ljava/lang/String;JJJILjava/lang/Object;)J

    .line 81
    move-result-wide v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 85
    move-result-wide v0

    .line 86
    .line 87
    sput-wide v0, Lkotlinx/coroutines/scheduling/l;->IDLE_WORKER_KEEP_ALIVE_NS:J

    .line 88
    .line 89
    sget-object v0, Lkotlinx/coroutines/scheduling/e;->INSTANCE:Lkotlinx/coroutines/scheduling/e;

    .line 90
    .line 91
    sput-object v0, Lkotlinx/coroutines/scheduling/l;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/g;

    .line 92
    .line 93
    new-instance v0, Lkotlinx/coroutines/scheduling/j;

    .line 94
    const/4 v1, 0x0

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/j;-><init>(I)V

    .line 98
    .line 99
    sput-object v0, Lkotlinx/coroutines/scheduling/l;->NonBlockingContext:Lkotlinx/coroutines/scheduling/i;

    .line 100
    .line 101
    new-instance v0, Lkotlinx/coroutines/scheduling/j;

    .line 102
    const/4 v1, 0x1

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/j;-><init>(I)V

    .line 106
    .line 107
    sput-object v0, Lkotlinx/coroutines/scheduling/l;->BlockingContext:Lkotlinx/coroutines/scheduling/i;

    .line 108
    return-void
.end method
