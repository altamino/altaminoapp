.class public Lcom/bumptech/glide/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/bumptech/glide/manager/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lcom/bumptech/glide/manager/i;"
    }
.end annotation


# static fields
.field private static final DECODE_TYPE_BITMAP:Ly0/f;

.field private static final DECODE_TYPE_GIF:Ly0/f;

.field private static final DOWNLOAD_ONLY_OPTIONS:Ly0/f;


# instance fields
.field private final addSelfToLifecycle:Ljava/lang/Runnable;

.field private final connectivityMonitor:Lcom/bumptech/glide/manager/c;

.field protected final context:Landroid/content/Context;

.field private final defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ly0/e<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final glide:Lcom/bumptech/glide/b;

.field final lifecycle:Lcom/bumptech/glide/manager/h;

.field private final mainHandler:Landroid/os/Handler;

.field private pauseAllRequestsOnTrimMemoryModerate:Z

.field private requestOptions:Ly0/f;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final requestTracker:Lcom/bumptech/glide/manager/n;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final targetTracker:Lcom/bumptech/glide/manager/p;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final treeNode:Lcom/bumptech/glide/manager/m;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-class v0, Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ly0/f;->b0(Ljava/lang/Class;)Ly0/f;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ly0/a;->J()Ly0/a;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ly0/f;

    .line 13
    .line 14
    sput-object v0, Lcom/bumptech/glide/j;->DECODE_TYPE_BITMAP:Ly0/f;

    .line 15
    .line 16
    const-class v0, Lcom/bumptech/glide/load/resource/gif/c;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ly0/f;->b0(Ljava/lang/Class;)Ly0/f;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ly0/a;->J()Ly0/a;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Ly0/f;

    .line 27
    .line 28
    sput-object v0, Lcom/bumptech/glide/j;->DECODE_TYPE_GIF:Ly0/f;

    .line 29
    .line 30
    sget-object v0, Lcom/bumptech/glide/load/engine/j;->DATA:Lcom/bumptech/glide/load/engine/j;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ly0/f;->c0(Lcom/bumptech/glide/load/engine/j;)Ly0/f;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sget-object v1, Lcom/bumptech/glide/f;->LOW:Lcom/bumptech/glide/f;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ly0/a;->N(Lcom/bumptech/glide/f;)Ly0/a;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Ly0/f;

    .line 43
    const/4 v1, 0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ly0/a;->V(Z)Ly0/a;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Ly0/f;

    .line 50
    .line 51
    sput-object v0, Lcom/bumptech/glide/j;->DOWNLOAD_ONLY_OPTIONS:Ly0/f;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/m;Landroid/content/Context;)V
    .locals 7
    .param p1    # Lcom/bumptech/glide/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/manager/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v4, Lcom/bumptech/glide/manager/n;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/n;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->g()Lcom/bumptech/glide/manager/d;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/m;Lcom/bumptech/glide/manager/n;Lcom/bumptech/glide/manager/d;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/m;Lcom/bumptech/glide/manager/n;Lcom/bumptech/glide/manager/d;Landroid/content/Context;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/bumptech/glide/manager/p;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/p;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/j;->targetTracker:Lcom/bumptech/glide/manager/p;

    .line 6
    new-instance v0, Lcom/bumptech/glide/j$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/j$a;-><init>(Lcom/bumptech/glide/j;)V

    iput-object v0, p0, Lcom/bumptech/glide/j;->addSelfToLifecycle:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bumptech/glide/j;->mainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/j;->glide:Lcom/bumptech/glide/b;

    iput-object p2, p0, Lcom/bumptech/glide/j;->lifecycle:Lcom/bumptech/glide/manager/h;

    iput-object p3, p0, Lcom/bumptech/glide/j;->treeNode:Lcom/bumptech/glide/manager/m;

    iput-object p4, p0, Lcom/bumptech/glide/j;->requestTracker:Lcom/bumptech/glide/manager/n;

    iput-object p6, p0, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    .line 8
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/bumptech/glide/j$b;

    invoke-direct {p6, p0, p4}, Lcom/bumptech/glide/j$b;-><init>(Lcom/bumptech/glide/j;Lcom/bumptech/glide/manager/n;)V

    .line 9
    invoke-interface {p5, p3, p6}, Lcom/bumptech/glide/manager/d;->a(Landroid/content/Context;Lcom/bumptech/glide/manager/c$a;)Lcom/bumptech/glide/manager/c;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/j;->connectivityMonitor:Lcom/bumptech/glide/manager/c;

    .line 10
    invoke-static {}, Lcom/bumptech/glide/util/k;->o()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/h;->b(Lcom/bumptech/glide/manager/i;)V

    .line 13
    :goto_0
    invoke-interface {p2, p3}, Lcom/bumptech/glide/manager/h;->b(Lcom/bumptech/glide/manager/i;)V

    .line 14
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->i()Lcom/bumptech/glide/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/d;->b()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/j;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->i()Lcom/bumptech/glide/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/d;->c()Ly0/f;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/j;->u(Ly0/f;)V

    .line 17
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/b;->o(Lcom/bumptech/glide/j;)V

    return-void
.end method

.method private x(Lcom/bumptech/glide/request/target/e;)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/target/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/e<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->w(Lcom/bumptech/glide/request/target/e;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/e;->a()Ly0/c;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/j;->glide:Lcom/bumptech/glide/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/b;->p(Lcom/bumptech/glide/request/target/e;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/e;->c(Ly0/c;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ly0/c;->clear()V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Class;)Lcom/bumptech/glide/i;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/i<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/i;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/j;->glide:Lcom/bumptech/glide/b;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/j;->context:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/i;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/j;Ljava/lang/Class;Landroid/content/Context;)V

    .line 10
    return-object v0
.end method

.method public j()Lcom/bumptech/glide/i;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->i(Ljava/lang/Class;)Lcom/bumptech/glide/i;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/bumptech/glide/j;->DECODE_TYPE_BITMAP:Ly0/f;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->c0(Ly0/a;)Lcom/bumptech/glide/i;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public k()Lcom/bumptech/glide/i;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->i(Ljava/lang/Class;)Lcom/bumptech/glide/i;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public l(Lcom/bumptech/glide/request/target/e;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/target/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/e<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->x(Lcom/bumptech/glide/request/target/e;)V

    .line 7
    return-void
.end method

.method m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly0/e<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/j;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method declared-synchronized n()Ly0/f;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->requestOptions:Ly0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method o(Ljava/lang/Class;)Lcom/bumptech/glide/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/k<",
            "*TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/j;->glide:Lcom/bumptech/glide/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->i()Lcom/bumptech/glide/d;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->d(Ljava/lang/Class;)Lcom/bumptech/glide/k;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->targetTracker:Lcom/bumptech/glide/manager/p;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/p;->onDestroy()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/j;->targetTracker:Lcom/bumptech/glide/manager/p;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/p;->j()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/bumptech/glide/request/target/e;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/j;->l(Lcom/bumptech/glide/request/target/e;)V

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->targetTracker:Lcom/bumptech/glide/manager/p;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/p;->i()V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/j;->requestTracker:Lcom/bumptech/glide/manager/n;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->b()V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/j;->lifecycle:Lcom/bumptech/glide/manager/h;

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/j;->lifecycle:Lcom/bumptech/glide/manager/h;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/bumptech/glide/j;->connectivityMonitor:Lcom/bumptech/glide/manager/c;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/j;->mainHandler:Landroid/os/Handler;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/bumptech/glide/j;->addSelfToLifecycle:Ljava/lang/Runnable;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/j;->glide:Lcom/bumptech/glide/b;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/b;->s(Lcom/bumptech/glide/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit p0

    .line 72
    throw v0
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onStart()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->t()V

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/j;->targetTracker:Lcom/bumptech/glide/manager/p;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/p;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->s()V

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/j;->targetTracker:Lcom/bumptech/glide/manager/p;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/p;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x3c

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/bumptech/glide/j;->pauseAllRequestsOnTrimMemoryModerate:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->r()V

    .line 12
    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;)Lcom/bumptech/glide/i;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->k()Lcom/bumptech/glide/i;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->o0(Ljava/lang/String;)Lcom/bumptech/glide/i;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public declared-synchronized q()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->requestTracker:Lcom/bumptech/glide/manager/n;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized r()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->q()V

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/j;->treeNode:Lcom/bumptech/glide/manager/m;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bumptech/glide/manager/m;->a()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/bumptech/glide/j;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/bumptech/glide/j;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit p0

    .line 36
    throw v0
.end method

.method public declared-synchronized s()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->requestTracker:Lcom/bumptech/glide/manager/n;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized t()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->requestTracker:Lcom/bumptech/glide/manager/n;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "{tracker="

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/j;->requestTracker:Lcom/bumptech/glide/manager/n;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, ", treeNode="

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/bumptech/glide/j;->treeNode:Lcom/bumptech/glide/manager/m;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "}"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0

    .line 49
    throw v0
.end method

.method protected declared-synchronized u(Ly0/f;)V
    .locals 0
    .param p1    # Ly0/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Ly0/a;->e()Ly0/a;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    check-cast p1, Ly0/f;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ly0/a;->c()Ly0/a;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Ly0/f;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/bumptech/glide/j;->requestOptions:Ly0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method declared-synchronized v(Lcom/bumptech/glide/request/target/e;Ly0/c;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ly0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/e<",
            "*>;",
            "Ly0/c;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/j;->targetTracker:Lcom/bumptech/glide/manager/p;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/p;->k(Lcom/bumptech/glide/request/target/e;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/bumptech/glide/j;->requestTracker:Lcom/bumptech/glide/manager/n;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/manager/n;->g(Ly0/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method declared-synchronized w(Lcom/bumptech/glide/request/target/e;)Z
    .locals 3
    .param p1    # Lcom/bumptech/glide/request/target/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/e<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/e;->a()Ly0/c;

    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/j;->requestTracker:Lcom/bumptech/glide/manager/n;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/n;->a(Ly0/c;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/j;->targetTracker:Lcom/bumptech/glide/manager/p;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/p;->l(Lcom/bumptech/glide/request/target/e;)V

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/e;->c(Ly0/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit p0

    .line 29
    return v1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :goto_0
    monitor-exit p0

    .line 36
    throw p1
.end method
