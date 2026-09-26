.class final Lcom/google/firebase/messaging/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bulkOperation:Z
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field final internalQueue:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final itemSeparator:Ljava/lang/String;

.field private final queueName:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final syncExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/firebase/messaging/u0;->internalQueue:Ljava/util/ArrayDeque;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/google/firebase/messaging/u0;->bulkOperation:Z

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/firebase/messaging/u0;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/firebase/messaging/u0;->queueName:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/firebase/messaging/u0;->itemSeparator:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/google/firebase/messaging/u0;->syncExecutor:Ljava/util/concurrent/Executor;

    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/messaging/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/u0;->h()V

    return-void
.end method

.method private b(Z)Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/firebase/messaging/u0;->bulkOperation:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/firebase/messaging/u0;->i()V

    .line 10
    :cond_0
    return p1
.end method

.method static c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/u0;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/messaging/u0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/messaging/u0;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/firebase/messaging/u0;->d()V

    .line 9
    return-object v0
.end method

.method private d()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/u0;->internalQueue:Ljava/util/ArrayDeque;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/u0;->internalQueue:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/messaging/u0;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/firebase/messaging/u0;->queueName:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-nez v2, :cond_4

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/firebase/messaging/u0;->itemSeparator:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    goto :goto_2

    .line 34
    .line 35
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/messaging/u0;->itemSeparator:Ljava/lang/String;

    .line 36
    const/4 v3, -0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    array-length v2, v1

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-string v2, "FirebaseMessaging"

    .line 46
    .line 47
    const-string v3, "Corrupted queue. Please check the queue contents and item separator provided"

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    :goto_0
    array-length v2, v1

    .line 55
    const/4 v3, 0x0

    .line 56
    .line 57
    :goto_1
    if-ge v3, v2, :cond_3

    .line 58
    .line 59
    aget-object v4, v1, v3

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v5

    .line 64
    .line 65
    if-nez v5, :cond_2

    .line 66
    .line 67
    iget-object v5, p0, Lcom/google/firebase/messaging/u0;->internalQueue:Ljava/util/ArrayDeque;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :cond_4
    :goto_2
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw v1
.end method

.method private h()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/u0;->internalQueue:Ljava/util/ArrayDeque;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/u0;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/firebase/messaging/u0;->queueName:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/messaging/u0;->g()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method private i()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/u0;->syncExecutor:Ljava/util/concurrent/Executor;

    .line 3
    .line 4
    new-instance v1, Lcom/google/firebase/messaging/t0;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/t0;-><init>(Lcom/google/firebase/messaging/u0;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/u0;->internalQueue:Ljava/util/ArrayDeque;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/u0;->internalQueue:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public f(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/u0;->internalQueue:Ljava/util/ArrayDeque;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/u0;->internalQueue:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/u0;->b(Z)Z

    .line 13
    move-result p1

    .line 14
    monitor-exit v0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public g()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/messaging/u0;->internalQueue:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/firebase/messaging/u0;->itemSeparator:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
