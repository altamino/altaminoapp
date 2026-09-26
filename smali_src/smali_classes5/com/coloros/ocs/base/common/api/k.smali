.class public Lcom/coloros/ocs/base/common/api/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/ocs/base/common/api/d;


# static fields
.field private static final a:Ljava/lang/String; = "k"


# instance fields
.field private b:Ljava/util/concurrent/locks/Lock;

.field private c:Lcom/coloros/ocs/base/common/api/a;

.field private d:Lcom/coloros/ocs/base/common/api/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/api/a;Lcom/coloros/ocs/base/common/api/a$c;Lf1/a;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->b:Ljava/util/concurrent/locks/Lock;

    .line 11
    .line 12
    sget-object v0, Lcom/coloros/ocs/base/common/api/k;->a:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "init color client impl"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lc1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/k;->c:Lcom/coloros/ocs/base/common/api/a;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/coloros/ocs/base/common/api/a;->a()Lcom/coloros/ocs/base/common/api/a$a;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1, v0, p4, p3}, Lcom/coloros/ocs/base/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lf1/a;Ljava/lang/Object;)Lcom/coloros/ocs/base/common/api/a$e;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/k;->d:Lcom/coloros/ocs/base/common/api/a$e;

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/coloros/ocs/base/common/api/k;->a:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "connect()"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lc1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->b:Ljava/util/concurrent/locks/Lock;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->d:Lcom/coloros/ocs/base/common/api/a$e;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/a$e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_2

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->b:Ljava/util/concurrent/locks/Lock;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :goto_2
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/k;->b:Ljava/util/concurrent/locks/Lock;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 40
    throw v0
.end method

.method public b(Lcom/coloros/ocs/base/common/api/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/common/api/g<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->d:Lcom/coloros/ocs/base/common/api/a$e;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/coloros/ocs/base/common/api/a$e;->b(Lcom/coloros/ocs/base/common/api/g;)V

    .line 8
    :cond_0
    return-void
.end method

.method public c(Lcom/coloros/ocs/base/common/api/f;Landroid/os/Handler;)V
    .locals 1
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->d:Lcom/coloros/ocs/base/common/api/a$e;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/coloros/ocs/base/common/api/a$e;->c(Lcom/coloros/ocs/base/common/api/f;Landroid/os/Handler;)V

    .line 8
    :cond_0
    return-void
.end method

.method public d(Lcom/coloros/ocs/base/common/api/l;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->d:Lcom/coloros/ocs/base/common/api/a$e;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/coloros/ocs/base/common/api/a$e;->d(Lcom/coloros/ocs/base/common/api/l;)V

    .line 8
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->b:Ljava/util/concurrent/locks/Lock;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->d:Lcom/coloros/ocs/base/common/api/a$e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/a$e;->isConnected()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->d:Lcom/coloros/ocs/base/common/api/a$e;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/a$e;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->b:Ljava/util/concurrent/locks/Lock;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 31
    return-void

    .line 32
    .line 33
    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :goto_2
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/k;->b:Ljava/util/concurrent/locks/Lock;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 41
    throw v0
.end method

.method public e()Lcom/coloros/ocs/base/common/AuthResult;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->d:Lcom/coloros/ocs/base/common/api/a$e;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/a$e;->e()Lcom/coloros/ocs/base/common/AuthResult;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/k;->d:Lcom/coloros/ocs/base/common/api/a$e;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/a$e;->isConnected()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method
