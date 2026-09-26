.class public final Ly0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/d;
.implements Ly0/c;


# instance fields
.field private volatile error:Ly0/c;

.field private errorState:Ly0/d$a;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final parent:Ly0/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile primary:Ly0/c;

.field private primaryState:Ly0/d$a;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final requestLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ly0/d;)V
    .locals 1
    .param p2    # Ly0/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Ly0/d$a;->CLEARED:Ly0/d$a;

    .line 6
    .line 7
    iput-object v0, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 8
    .line 9
    iput-object v0, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 10
    .line 11
    iput-object p1, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p2, p0, Ly0/b;->parent:Ly0/d;

    .line 14
    return-void
.end method

.method private k(Ly0/c;)Z
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->primary:Ly0/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 11
    .line 12
    sget-object v1, Ly0/d$a;->FAILED:Ly0/d$a;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Ly0/b;->error:Ly0/c;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    :goto_1
    return p1
.end method

.method private l()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->parent:Ly0/d;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Ly0/d;->d(Ly0/c;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method private m()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->parent:Ly0/d;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Ly0/d;->i(Ly0/c;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method private n()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->parent:Ly0/d;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Ly0/d;->c(Ly0/c;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/b;->primary:Ly0/c;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ly0/c;->a()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Ly0/b;->error:Ly0/c;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ly0/c;->a()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    return v1

    .line 28
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v1
.end method

.method public b(Ly0/c;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/b;->error:Ly0/c;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    sget-object p1, Ly0/d$a;->FAILED:Ly0/d$a;

    .line 14
    .line 15
    iput-object p1, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 16
    .line 17
    iget-object p1, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 18
    .line 19
    sget-object v1, Ly0/d$a;->RUNNING:Ly0/d$a;

    .line 20
    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    iput-object v1, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 24
    .line 25
    iget-object p1, p0, Ly0/b;->error:Ly0/c;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ly0/c;->j()V

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    .line 35
    :cond_1
    sget-object p1, Ly0/d$a;->FAILED:Ly0/d$a;

    .line 36
    .line 37
    iput-object p1, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 38
    .line 39
    iget-object p1, p0, Ly0/b;->parent:Ly0/d;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, p0}, Ly0/d;->b(Ly0/c;)V

    .line 45
    :cond_2
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1
.end method

.method public c(Ly0/c;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Ly0/b;->n()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Ly0/b;->k(Ly0/c;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p1

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method public clear()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Ly0/d$a;->CLEARED:Ly0/d$a;

    .line 6
    .line 7
    iput-object v1, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 8
    .line 9
    iget-object v2, p0, Ly0/b;->primary:Ly0/c;

    .line 10
    .line 11
    .line 12
    invoke-interface {v2}, Ly0/c;->clear()V

    .line 13
    .line 14
    iget-object v2, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 15
    .line 16
    if-eq v2, v1, :cond_0

    .line 17
    .line 18
    iput-object v1, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 19
    .line 20
    iget-object v1, p0, Ly0/b;->error:Ly0/c;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ly0/c;->clear()V

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public d(Ly0/c;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Ly0/b;->l()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Ly0/b;->k(Ly0/c;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p1

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method public e()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 6
    .line 7
    sget-object v2, Ly0/d$a;->CLEARED:Ly0/d$a;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return v1

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method public f()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 6
    .line 7
    sget-object v2, Ly0/d$a;->SUCCESS:Ly0/d$a;

    .line 8
    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 20
    :goto_1
    monitor-exit v0

    .line 21
    return v1

    .line 22
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public g(Ly0/c;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/b;->primary:Ly0/c;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object p1, Ly0/d$a;->SUCCESS:Ly0/d$a;

    .line 14
    .line 15
    iput-object p1, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Ly0/b;->error:Ly0/c;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object p1, Ly0/d$a;->SUCCESS:Ly0/d$a;

    .line 29
    .line 30
    iput-object p1, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object p1, p0, Ly0/b;->parent:Ly0/d;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p0}, Ly0/d;->g(Ly0/c;)V

    .line 38
    :cond_2
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method public getRoot()Ly0/d;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/b;->parent:Ly0/d;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ly0/d;->getRoot()Ly0/d;

    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move-object v1, p0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public h(Ly0/c;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Ly0/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Ly0/b;

    .line 8
    .line 9
    iget-object v0, p0, Ly0/b;->primary:Ly0/c;

    .line 10
    .line 11
    iget-object v2, p1, Ly0/b;->primary:Ly0/c;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2}, Ly0/c;->h(Ly0/c;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Ly0/b;->error:Ly0/c;

    .line 20
    .line 21
    iget-object p1, p1, Ly0/b;->error:Ly0/c;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1}, Ly0/c;->h(Ly0/c;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_0
    return v1
.end method

.method public i(Ly0/c;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Ly0/b;->m()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Ly0/b;->k(Ly0/c;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p1

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 6
    .line 7
    sget-object v2, Ly0/d$a;->RUNNING:Ly0/d$a;

    .line 8
    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 20
    :goto_1
    monitor-exit v0

    .line 21
    return v1

    .line 22
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public j()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 6
    .line 7
    sget-object v2, Ly0/d$a;->RUNNING:Ly0/d$a;

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    iput-object v2, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 12
    .line 13
    iget-object v1, p0, Ly0/b;->primary:Ly0/c;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ly0/c;->j()V

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public o(Ly0/c;Ly0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/b;->primary:Ly0/c;

    iput-object p2, p0, Ly0/b;->error:Ly0/c;

    return-void
.end method

.method public pause()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Ly0/b;->requestLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 6
    .line 7
    sget-object v2, Ly0/d$a;->RUNNING:Ly0/d$a;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    sget-object v1, Ly0/d$a;->PAUSED:Ly0/d$a;

    .line 12
    .line 13
    iput-object v1, p0, Ly0/b;->primaryState:Ly0/d$a;

    .line 14
    .line 15
    iget-object v1, p0, Ly0/b;->primary:Ly0/c;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ly0/c;->pause()V

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    sget-object v1, Ly0/d$a;->PAUSED:Ly0/d$a;

    .line 28
    .line 29
    iput-object v1, p0, Ly0/b;->errorState:Ly0/d$a;

    .line 30
    .line 31
    iget-object v1, p0, Ly0/b;->error:Ly0/c;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ly0/c;->pause()V

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1
.end method
