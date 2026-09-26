.class public Lcom/google/firebase/appcheck/debug/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.google.firebase.appcheck.debug.internal.e"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final blockingExecutor:Ljava/util/concurrent/Executor;

.field private final debugSecretTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final liteExecutor:Ljava/util/concurrent/Executor;

.field private final networkClient:Lcom/google/firebase/appcheck/internal/m;

.field private final retryManager:Lcom/google/firebase/appcheck/internal/n;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/f;Lo4/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lo4/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lw3/c;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Lw3/a;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Lw3/b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lo4/b<",
            "Ly3/b;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lcom/google/firebase/appcheck/internal/m;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/google/firebase/appcheck/internal/m;-><init>(Lcom/google/firebase/f;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/firebase/appcheck/debug/internal/e;->networkClient:Lcom/google/firebase/appcheck/internal/m;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/firebase/appcheck/debug/internal/e;->liteExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/google/firebase/appcheck/debug/internal/e;->blockingExecutor:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    new-instance p3, Lcom/google/firebase/appcheck/internal/n;

    .line 20
    .line 21
    .line 22
    invoke-direct {p3}, Lcom/google/firebase/appcheck/internal/n;-><init>()V

    .line 23
    .line 24
    iput-object p3, p0, Lcom/google/firebase/appcheck/debug/internal/e;->retryManager:Lcom/google/firebase/appcheck/internal/n;

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Lo4/b;->get()Ljava/lang/Object;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {p2}, Lo4/b;->get()Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    check-cast p2, Ly3/b;

    .line 37
    .line 38
    .line 39
    invoke-interface {p2}, Ly3/b;->a()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p2, 0x0

    .line 43
    .line 44
    :goto_0
    if-nez p2, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p4}, Lcom/google/firebase/appcheck/debug/internal/e;->e(Lcom/google/firebase/f;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 48
    move-result-object p1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    :goto_1
    iput-object p1, p0, Lcom/google/firebase/appcheck/debug/internal/e;->debugSecretTask:Lcom/google/android/gms/tasks/Task;

    .line 56
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/appcheck/debug/internal/e;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/debug/internal/e;->h(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/f;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/appcheck/debug/internal/e;->f(Lcom/google/firebase/f;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/appcheck/internal/a;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/appcheck/debug/internal/e;->i(Lcom/google/firebase/appcheck/internal/a;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/firebase/appcheck/debug/internal/e;Lcom/google/firebase/appcheck/debug/internal/f;)Lcom/google/firebase/appcheck/internal/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/debug/internal/e;->g(Lcom/google/firebase/appcheck/debug/internal/f;)Lcom/google/firebase/appcheck/internal/a;

    move-result-object p0

    return-object p0
.end method

.method static e(Lcom/google/firebase/f;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p0    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/google/firebase/appcheck/debug/internal/a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Lcom/google/firebase/appcheck/debug/internal/a;-><init>(Lcom/google/firebase/f;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static synthetic f(Lcom/google/firebase/f;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/appcheck/debug/internal/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/f;->o()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, p0}, Lcom/google/firebase/appcheck/debug/internal/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/firebase/appcheck/debug/internal/g;->a()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/google/firebase/appcheck/debug/internal/g;->b(Ljava/lang/String;)V

    .line 31
    .line 32
    :cond_0
    sget-object v0, Lcom/google/firebase/appcheck/debug/internal/e;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v2, "Enter this debug secret into the allow list in the Firebase Console for your project: "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method private synthetic g(Lcom/google/firebase/appcheck/debug/internal/f;)Lcom/google/firebase/appcheck/internal/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/appcheck/debug/internal/e;->networkClient:Lcom/google/firebase/appcheck/internal/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/debug/internal/f;->a()Ljava/lang/String;

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
    const/4 v1, 0x2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/firebase/appcheck/debug/internal/e;->retryManager:Lcom/google/firebase/appcheck/internal/n;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/firebase/appcheck/internal/m;->b([BILcom/google/firebase/appcheck/internal/n;)Lcom/google/firebase/appcheck/internal/a;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private synthetic h(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/appcheck/debug/internal/f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/firebase/appcheck/debug/internal/f;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/firebase/appcheck/debug/internal/e;->blockingExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v1, Lcom/google/firebase/appcheck/debug/internal/d;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, v0}, Lcom/google/firebase/appcheck/debug/internal/d;-><init>(Lcom/google/firebase/appcheck/debug/internal/e;Lcom/google/firebase/appcheck/debug/internal/f;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private static synthetic i(Lcom/google/firebase/appcheck/internal/a;)Lcom/google/android/gms/tasks/Task;
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
    iget-object v0, p0, Lcom/google/firebase/appcheck/debug/internal/e;->debugSecretTask:Lcom/google/android/gms/tasks/Task;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/appcheck/debug/internal/e;->liteExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    new-instance v2, Lcom/google/firebase/appcheck/debug/internal/b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/google/firebase/appcheck/debug/internal/b;-><init>(Lcom/google/firebase/appcheck/debug/internal/e;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/firebase/appcheck/debug/internal/e;->liteExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    new-instance v2, Lcom/google/firebase/appcheck/debug/internal/c;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Lcom/google/firebase/appcheck/debug/internal/c;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
