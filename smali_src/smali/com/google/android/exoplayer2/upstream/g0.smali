.class public final Lcom/google/android/exoplayer2/upstream/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/g0$g;,
        Lcom/google/android/exoplayer2/upstream/g0$d;,
        Lcom/google/android/exoplayer2/upstream/g0$c;,
        Lcom/google/android/exoplayer2/upstream/g0$f;,
        Lcom/google/android/exoplayer2/upstream/g0$b;,
        Lcom/google/android/exoplayer2/upstream/g0$e;,
        Lcom/google/android/exoplayer2/upstream/g0$h;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_DONT_RETRY:I = 0x2

.field private static final ACTION_TYPE_DONT_RETRY_FATAL:I = 0x3

.field private static final ACTION_TYPE_RETRY:I = 0x0

.field private static final ACTION_TYPE_RETRY_AND_RESET_ERROR_COUNT:I = 0x1

.field public static final DONT_RETRY:Lcom/google/android/exoplayer2/upstream/g0$c;

.field public static final DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/g0$c;

.field public static final RETRY:Lcom/google/android/exoplayer2/upstream/g0$c;

.field public static final RETRY_RESET_ERROR_COUNT:Lcom/google/android/exoplayer2/upstream/g0$c;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "ExoPlayer:Loader:"


# instance fields
.field private currentTask:Lcom/google/android/exoplayer2/upstream/g0$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/g0$d<",
            "+",
            "Lcom/google/android/exoplayer2/upstream/g0$e;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadExecutorService:Ljava/util/concurrent/ExecutorService;

.field private fatalError:Ljava/io/IOException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/g0;->g(ZJ)Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sput-object v0, Lcom/google/android/exoplayer2/upstream/g0;->RETRY:Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/g0;->g(ZJ)Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sput-object v0, Lcom/google/android/exoplayer2/upstream/g0;->RETRY_RESET_ERROR_COUNT:Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/exoplayer2/upstream/g0$c;-><init>(IJLcom/google/android/exoplayer2/upstream/g0$a;)V

    .line 27
    .line 28
    sput-object v0, Lcom/google/android/exoplayer2/upstream/g0;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 29
    .line 30
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 31
    const/4 v3, 0x3

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/exoplayer2/upstream/g0$c;-><init>(IJLcom/google/android/exoplayer2/upstream/g0$a;)V

    .line 35
    .line 36
    sput-object v0, Lcom/google/android/exoplayer2/upstream/g0;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    const-string v1, "ExoPlayer:Loader:"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->x0(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/g0;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/g0;)Lcom/google/android/exoplayer2/upstream/g0$d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/g0;->currentTask:Lcom/google/android/exoplayer2/upstream/g0$d;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/upstream/g0;Lcom/google/android/exoplayer2/upstream/g0$d;)Lcom/google/android/exoplayer2/upstream/g0$d;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/g0;->currentTask:Lcom/google/android/exoplayer2/upstream/g0$d;

    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/upstream/g0;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/g0;->fatalError:Ljava/io/IOException;

    .line 3
    return-object p1
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/upstream/g0;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/g0;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 3
    return-object p0
.end method

.method public static g(ZJ)Lcom/google/android/exoplayer2/upstream/g0$c;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/exoplayer2/upstream/g0$c;-><init>(IJLcom/google/android/exoplayer2/upstream/g0$a;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/g0;->currentTask:Lcom/google/android/exoplayer2/upstream/g0$d;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/upstream/g0$d;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/g0$d;->a(Z)V

    .line 13
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/g0;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/g0;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/g0;->currentTask:Lcom/google/android/exoplayer2/upstream/g0$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/high16 v0, -0x80000000

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/g0;->k(I)V

    .line 6
    return-void
.end method

.method public k(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/g0;->fatalError:Ljava/io/IOException;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/g0;->currentTask:Lcom/google/android/exoplayer2/upstream/g0$d;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget p1, v0, Lcom/google/android/exoplayer2/upstream/g0$d;->defaultMinRetryCount:I

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/g0$d;->e(I)V

    .line 18
    :cond_1
    return-void

    .line 19
    :cond_2
    throw v0
.end method

.method public l()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/g0;->m(Lcom/google/android/exoplayer2/upstream/g0$f;)V

    .line 5
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/upstream/g0$f;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/upstream/g0$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/g0;->currentTask:Lcom/google/android/exoplayer2/upstream/g0$d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/g0$d;->a(Z)V

    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/g0;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/exoplayer2/upstream/g0$g;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/g0$g;-><init>(Lcom/google/android/exoplayer2/upstream/g0$f;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/g0;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 26
    return-void
.end method

.method public n(Lcom/google/android/exoplayer2/upstream/g0$e;Lcom/google/android/exoplayer2/upstream/g0$b;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/upstream/g0$e;",
            ">(TT;",
            "Lcom/google/android/exoplayer2/upstream/g0$b<",
            "TT;>;I)J"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    move-object v3, v0

    .line 10
    .line 11
    check-cast v3, Landroid/os/Looper;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/g0;->fatalError:Ljava/io/IOException;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v9

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g0$d;

    .line 21
    move-object v1, v0

    .line 22
    move-object v2, p0

    .line 23
    move-object v4, p1

    .line 24
    move-object v5, p2

    .line 25
    move v6, p3

    .line 26
    move-wide v7, v9

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/upstream/g0$d;-><init>(Lcom/google/android/exoplayer2/upstream/g0;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/g0$e;Lcom/google/android/exoplayer2/upstream/g0$b;IJ)V

    .line 30
    .line 31
    const-wide/16 p1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/g0$d;->f(J)V

    .line 35
    return-wide v9
.end method
