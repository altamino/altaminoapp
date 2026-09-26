.class public Lcom/google/firebase/appcheck/playintegrity/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/a;


# static fields
.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final blockingExecutor:Ljava/util/concurrent/Executor;

.field private final integrityManager:Lcom/google/android/play/core/integrity/a;

.field private final liteExecutor:Ljava/util/concurrent/Executor;

.field private final networkClient:Lcom/google/firebase/appcheck/internal/m;

.field private final projectNumber:Ljava/lang/String;

.field private final retryManager:Lcom/google/firebase/appcheck/internal/n;


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 8
    .param p1    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lw3/c;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lw3/b;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/n;->d()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/integrity/b;->a(Landroid/content/Context;)Lcom/google/android/play/core/integrity/a;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/appcheck/internal/m;

    invoke-direct {v4, p1}, Lcom/google/firebase/appcheck/internal/m;-><init>(Lcom/google/firebase/f;)V

    new-instance v7, Lcom/google/firebase/appcheck/internal/n;

    invoke-direct {v7}, Lcom/google/firebase/appcheck/internal/n;-><init>()V

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/appcheck/playintegrity/internal/i;-><init>(Ljava/lang/String;Lcom/google/android/play/core/integrity/a;Lcom/google/firebase/appcheck/internal/m;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/appcheck/internal/n;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/play/core/integrity/a;Lcom/google/firebase/appcheck/internal/m;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/appcheck/internal/n;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/play/core/integrity/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/appcheck/internal/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/firebase/appcheck/internal/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->projectNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->integrityManager:Lcom/google/android/play/core/integrity/a;

    iput-object p3, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->networkClient:Lcom/google/firebase/appcheck/internal/m;

    iput-object p4, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->liteExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->blockingExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->retryManager:Lcom/google/firebase/appcheck/internal/n;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/appcheck/playintegrity/internal/i;Lcom/google/android/play/core/integrity/e;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/playintegrity/internal/i;->j(Lcom/google/android/play/core/integrity/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/appcheck/playintegrity/internal/i;Lcom/google/firebase/appcheck/playintegrity/internal/b;)Lcom/google/firebase/appcheck/playintegrity/internal/c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/playintegrity/internal/i;->g(Lcom/google/firebase/appcheck/playintegrity/internal/b;)Lcom/google/firebase/appcheck/playintegrity/internal/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/appcheck/playintegrity/internal/i;Lcom/google/firebase/appcheck/playintegrity/internal/a;)Lcom/google/firebase/appcheck/internal/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/playintegrity/internal/i;->i(Lcom/google/firebase/appcheck/playintegrity/internal/a;)Lcom/google/firebase/appcheck/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/firebase/appcheck/playintegrity/internal/i;Lcom/google/firebase/appcheck/playintegrity/internal/c;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/playintegrity/internal/i;->h(Lcom/google/firebase/appcheck/playintegrity/internal/c;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/firebase/appcheck/internal/a;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/appcheck/playintegrity/internal/i;->k(Lcom/google/firebase/appcheck/internal/a;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private f()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/integrity/e;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/appcheck/playintegrity/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/appcheck/playintegrity/internal/b;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->blockingExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v2, Lcom/google/firebase/appcheck/playintegrity/internal/f;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/appcheck/playintegrity/internal/f;-><init>(Lcom/google/firebase/appcheck/playintegrity/internal/i;Lcom/google/firebase/appcheck/playintegrity/internal/b;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->liteExecutor:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    new-instance v2, Lcom/google/firebase/appcheck/playintegrity/internal/g;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/google/firebase/appcheck/playintegrity/internal/g;-><init>(Lcom/google/firebase/appcheck/playintegrity/internal/i;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method private synthetic g(Lcom/google/firebase/appcheck/playintegrity/internal/b;)Lcom/google/firebase/appcheck/playintegrity/internal/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->networkClient:Lcom/google/firebase/appcheck/internal/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/playintegrity/internal/b;->a()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v1, "UTF-8"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->retryManager:Lcom/google/firebase/appcheck/internal/n;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/appcheck/internal/m;->c([BLcom/google/firebase/appcheck/internal/n;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/firebase/appcheck/playintegrity/internal/c;->a(Ljava/lang/String;)Lcom/google/firebase/appcheck/playintegrity/internal/c;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private synthetic h(Lcom/google/firebase/appcheck/playintegrity/internal/c;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->integrityManager:Lcom/google/android/play/core/integrity/a;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/play/core/integrity/d;->b()Lcom/google/android/play/core/integrity/d$a;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->projectNumber:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/integrity/d$a;->b(J)Lcom/google/android/play/core/integrity/d$a;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/playintegrity/internal/c;->b()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lcom/google/android/play/core/integrity/d$a;->c(Ljava/lang/String;)Lcom/google/android/play/core/integrity/d$a;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/d$a;->a()Lcom/google/android/play/core/integrity/d;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/google/android/play/core/integrity/a;->a(Lcom/google/android/play/core/integrity/d;)Lcom/google/android/gms/tasks/Task;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method private synthetic i(Lcom/google/firebase/appcheck/playintegrity/internal/a;)Lcom/google/firebase/appcheck/internal/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->networkClient:Lcom/google/firebase/appcheck/internal/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/playintegrity/internal/a;->a()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v1, "UTF-8"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x3

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->retryManager:Lcom/google/firebase/appcheck/internal/n;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/firebase/appcheck/internal/m;->b([BILcom/google/firebase/appcheck/internal/n;)Lcom/google/firebase/appcheck/internal/a;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private synthetic j(Lcom/google/android/play/core/integrity/e;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/appcheck/playintegrity/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/e;->a()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/google/firebase/appcheck/playintegrity/internal/a;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->blockingExecutor:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    new-instance v1, Lcom/google/firebase/appcheck/playintegrity/internal/h;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0, v0}, Lcom/google/firebase/appcheck/playintegrity/internal/h;-><init>(Lcom/google/firebase/appcheck/playintegrity/internal/i;Lcom/google/firebase/appcheck/playintegrity/internal/a;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private static synthetic k(Lcom/google/firebase/appcheck/internal/a;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/appcheck/internal/b;->c(Lcom/google/firebase/appcheck/internal/a;)Lcom/google/firebase/appcheck/internal/b;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public getToken()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lx3/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/appcheck/playintegrity/internal/i;->f()Lcom/google/android/gms/tasks/Task;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->liteExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v2, Lcom/google/firebase/appcheck/playintegrity/internal/d;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/google/firebase/appcheck/playintegrity/internal/d;-><init>(Lcom/google/firebase/appcheck/playintegrity/internal/i;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/i;->liteExecutor:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    new-instance v2, Lcom/google/firebase/appcheck/playintegrity/internal/e;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2}, Lcom/google/firebase/appcheck/playintegrity/internal/e;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
