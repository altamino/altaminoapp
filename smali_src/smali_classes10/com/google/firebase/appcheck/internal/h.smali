.class public Lcom/google/firebase/appcheck/internal/h;
.super Lx3/e;
.source "SourceFile"


# static fields
.field private static final BUFFER_TIME_MILLIS:J = 0x493e0L


# instance fields
.field private final appCheckListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx3/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private appCheckProvider:Lx3/a;

.field private appCheckProviderFactory:Lx3/b;

.field private final appCheckTokenListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz3/a;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private cachedToken:Lx3/c;

.field private cachedTokenTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lx3/c;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/firebase/appcheck/internal/util/a;

.field private final firebaseApp:Lcom/google/firebase/f;

.field private final heartbeatControllerProvider:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Lm4/i;",
            ">;"
        }
    .end annotation
.end field

.field private final liteExecutor:Ljava/util/concurrent/Executor;

.field private final retrieveStoredTokenTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final storageHelper:Lcom/google/firebase/appcheck/internal/p;

.field private final tokenRefreshManager:Lcom/google/firebase/appcheck/internal/q;

.field private final uiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Lo4/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p1    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lo4/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lw3/d;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Lw3/c;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Lw3/a;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Lw3/b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lo4/b<",
            "Lm4/i;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lx3/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->firebaseApp:Lcom/google/firebase/f;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/h;->heartbeatControllerProvider:Lo4/b;

    .line 14
    .line 15
    new-instance p2, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/h;->appCheckTokenListenerList:Ljava/util/List;

    .line 21
    .line 22
    new-instance p2, Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/h;->appCheckListenerList:Ljava/util/List;

    .line 28
    .line 29
    new-instance p2, Lcom/google/firebase/appcheck/internal/p;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/firebase/f;->o()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, v0, v1}, Lcom/google/firebase/appcheck/internal/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/h;->storageHelper:Lcom/google/firebase/appcheck/internal/p;

    .line 43
    .line 44
    new-instance p2, Lcom/google/firebase/appcheck/internal/q;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, p1, p0, p4, p6}, Lcom/google/firebase/appcheck/internal/q;-><init>(Landroid/content/Context;Lcom/google/firebase/appcheck/internal/h;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 52
    .line 53
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/h;->tokenRefreshManager:Lcom/google/firebase/appcheck/internal/q;

    .line 54
    .line 55
    iput-object p3, p0, Lcom/google/firebase/appcheck/internal/h;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 56
    .line 57
    iput-object p4, p0, Lcom/google/firebase/appcheck/internal/h;->liteExecutor:Ljava/util/concurrent/Executor;

    .line 58
    .line 59
    iput-object p5, p0, Lcom/google/firebase/appcheck/internal/h;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p5}, Lcom/google/firebase/appcheck/internal/h;->q(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->retrieveStoredTokenTask:Lcom/google/android/gms/tasks/Task;

    .line 66
    .line 67
    new-instance p1, Lcom/google/firebase/appcheck/internal/util/a$a;

    .line 68
    .line 69
    .line 70
    invoke-direct {p1}, Lcom/google/firebase/appcheck/internal/util/a$a;-><init>()V

    .line 71
    .line 72
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->clock:Lcom/google/firebase/appcheck/internal/util/a;

    .line 73
    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/appcheck/internal/h;ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/appcheck/internal/h;->n(ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/firebase/appcheck/internal/h;Lx3/c;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/internal/h;->m(Lx3/c;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/google/firebase/appcheck/internal/h;Lx3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/internal/h;->p(Lx3/c;)V

    return-void
.end method

.method public static synthetic h(Lcom/google/firebase/appcheck/internal/h;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/internal/h;->o(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method private k()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/h;->cachedToken:Lx3/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lx3/c;->a()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/firebase/appcheck/internal/h;->clock:Lcom/google/firebase/appcheck/internal/util/a;

    .line 11
    .line 12
    .line 13
    invoke-interface {v2}, Lcom/google/firebase/appcheck/internal/util/a;->currentTimeMillis()J

    .line 14
    move-result-wide v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    .line 17
    .line 18
    const-wide/32 v2, 0x493e0

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method private synthetic m(Lx3/c;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/internal/h;->s(Lx3/c;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/h;->appCheckListenerList:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lx3/e$a;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, p1}, Lx3/e$a;->a(Lx3/c;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/appcheck/internal/c;->a(Lx3/c;)Lcom/google/firebase/appcheck/internal/c;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/h;->appCheckTokenListenerList:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    check-cast v2, Lz3/a;

    .line 48
    .line 49
    .line 50
    invoke-interface {v2, v0}, Lz3/a;->a(Lx3/d;)V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method private synthetic n(ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/h;->k()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->cachedToken:Lx3/c;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->appCheckProvider:Lx3/a;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/google/firebase/l;

    .line 22
    .line 23
    const-string p2, "No AppCheckProvider installed."

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p2}, Lcom/google/firebase/l;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    .line 33
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->cachedTokenTask:Lcom/google/android/gms/tasks/Task;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->cachedTokenTask:Lcom/google/android/gms/tasks/Task;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/appcheck/internal/h;->i()Lcom/google/android/gms/tasks/Task;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->cachedTokenTask:Lcom/google/android/gms/tasks/Task;

    .line 56
    .line 57
    :cond_3
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->cachedTokenTask:Lcom/google/android/gms/tasks/Task;

    .line 58
    return-object p1
.end method

.method private synthetic o(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/h;->storageHelper:Lcom/google/firebase/appcheck/internal/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/appcheck/internal/p;->d()Lx3/c;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/firebase/appcheck/internal/h;->r(Lx3/c;)V

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method private synthetic p(Lx3/c;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/h;->storageHelper:Lcom/google/firebase/appcheck/internal/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/appcheck/internal/p;->e(Lx3/c;)V

    .line 6
    return-void
.end method

.method private q(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
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
    new-instance v1, Lcom/google/firebase/appcheck/internal/e;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Lcom/google/firebase/appcheck/internal/e;-><init>(Lcom/google/firebase/appcheck/internal/h;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private s(Lx3/c;)V
    .locals 2
    .param p1    # Lx3/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/h;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 3
    .line 4
    new-instance v1, Lcom/google/firebase/appcheck/internal/g;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/appcheck/internal/g;-><init>(Lcom/google/firebase/appcheck/internal/h;Lx3/c;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/firebase/appcheck/internal/h;->r(Lx3/c;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/h;->tokenRefreshManager:Lcom/google/firebase/appcheck/internal/q;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/google/firebase/appcheck/internal/q;->d(Lx3/c;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lx3/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/h;->retrieveStoredTokenTask:Lcom/google/android/gms/tasks/Task;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/h;->liteExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    new-instance v2, Lcom/google/firebase/appcheck/internal/d;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p0, p1}, Lcom/google/firebase/appcheck/internal/d;-><init>(Lcom/google/firebase/appcheck/internal/h;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public d(Lx3/b;)V
    .locals 1
    .param p1    # Lx3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/h;->firebaseApp:Lcom/google/firebase/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/f;->t()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appcheck/internal/h;->l(Lx3/b;Z)V

    .line 10
    return-void
.end method

.method i()Lcom/google/android/gms/tasks/Task;
    .locals 3
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
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/h;->appCheckProvider:Lx3/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lx3/a;->getToken()Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/h;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    new-instance v2, Lcom/google/firebase/appcheck/internal/f;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, p0}, Lcom/google/firebase/appcheck/internal/f;-><init>(Lcom/google/firebase/appcheck/internal/h;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method j()Lo4/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo4/b<",
            "Lm4/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/h;->heartbeatControllerProvider:Lo4/b;

    return-object v0
.end method

.method public l(Lx3/b;Z)V
    .locals 1
    .param p1    # Lx3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->appCheckProviderFactory:Lx3/b;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/h;->firebaseApp:Lcom/google/firebase/f;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lx3/b;->a(Lcom/google/firebase/f;)Lx3/a;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->appCheckProvider:Lx3/a;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->tokenRefreshManager:Lcom/google/firebase/appcheck/internal/q;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/google/firebase/appcheck/internal/q;->e(Z)V

    .line 19
    return-void
.end method

.method r(Lx3/c;)V
    .locals 0
    .param p1    # Lx3/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/h;->cachedToken:Lx3/c;

    return-void
.end method
