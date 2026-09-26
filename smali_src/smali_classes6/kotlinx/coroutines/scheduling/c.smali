.class public final Lkotlinx/coroutines/scheduling/c;
.super Lkotlinx/coroutines/scheduling/f;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/c;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/c;->INSTANCE:Lkotlinx/coroutines/scheduling/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 1
    .line 2
    sget v1, Lkotlinx/coroutines/scheduling/l;->CORE_POOL_SIZE:I

    .line 3
    .line 4
    sget v2, Lkotlinx/coroutines/scheduling/l;->MAX_POOL_SIZE:I

    .line 5
    .line 6
    sget-wide v3, Lkotlinx/coroutines/scheduling/l;->IDLE_WORKER_KEEP_ALIVE_NS:J

    .line 7
    .line 8
    sget-object v5, Lkotlinx/coroutines/scheduling/l;->DEFAULT_SCHEDULER_NAME:Ljava/lang/String;

    .line 9
    move-object v0, p0

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/f;-><init>(IIJLjava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string v1, "Dispatchers.Default cannot be closed"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public limitedParallelism(I)Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lkotlinx/coroutines/internal/q;->a(I)V

    .line 4
    .line 5
    sget v0, Lkotlinx/coroutines/scheduling/l;->CORE_POOL_SIZE:I

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    return-object p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/k0;->limitedParallelism(I)Lkotlinx/coroutines/k0;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
