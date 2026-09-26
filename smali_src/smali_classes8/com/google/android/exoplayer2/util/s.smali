.class public final Lcom/google/android/exoplayer2/util/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/s$c;,
        Lcom/google/android/exoplayer2/util/s$b;,
        Lcom/google/android/exoplayer2/util/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MSG_ITERATION_FINISHED:I


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/d;

.field private final flushingEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lcom/google/android/exoplayer2/util/p;

.field private final iterationFinishedEvent:Lcom/google/android/exoplayer2/util/s$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/s$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/util/s$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final queuedEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/s$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/d;",
            "Lcom/google/android/exoplayer2/util/s$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/s;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/s$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/s$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/util/s$c<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/d;",
            "Lcom/google/android/exoplayer2/util/s$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/util/s;->clock:Lcom/google/android/exoplayer2/util/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/s;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p4, p0, Lcom/google/android/exoplayer2/util/s;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/s$b;

    .line 3
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/s;->flushingEvents:Ljava/util/ArrayDeque;

    .line 4
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/s;->queuedEvents:Ljava/util/ArrayDeque;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/util/q;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/util/q;-><init>(Lcom/google/android/exoplayer2/util/s;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/exoplayer2/util/d;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/p;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/s;->handler:Lcom/google/android/exoplayer2/util/p;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/s$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/s;->h(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/s$a;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/util/s;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/s;->g(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private g(Landroid/os/Message;)Z
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/s;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/google/android/exoplayer2/util/s$c;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/s;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/s$b;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/s$c;->b(Lcom/google/android/exoplayer2/util/s$b;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->a(I)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method private static synthetic h(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/s$a;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/exoplayer2/util/s$c;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/s$c;->a(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/s;->released:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/exoplayer2/util/s$c;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/s$c;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public d(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/s$b;)Lcom/google/android/exoplayer2/util/s;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/d;",
            "Lcom/google/android/exoplayer2/util/s$b<",
            "TT;>;)",
            "Lcom/google/android/exoplayer2/util/s<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/s;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/s;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/util/s;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/s$b;)V

    .line 8
    return-object v0
.end method

.method public e(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/s$b;)Lcom/google/android/exoplayer2/util/s;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/s$b<",
            "TT;>;)",
            "Lcom/google/android/exoplayer2/util/s<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/s;->d(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/s$b;)Lcom/google/android/exoplayer2/util/s;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->queuedEvents:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->a(I)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(I)Lcom/google/android/exoplayer2/util/p$a;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->b(Lcom/google/android/exoplayer2/util/p$a;)Z

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->flushingEvents:Ljava/util/ArrayDeque;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    xor-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/s;->flushingEvents:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/s;->queuedEvents:Ljava/util/ArrayDeque;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/s;->queuedEvents:Ljava/util/ArrayDeque;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    return-void

    .line 51
    .line 52
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->flushingEvents:Ljava/util/ArrayDeque;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->flushingEvents:Ljava/util/ArrayDeque;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Ljava/lang/Runnable;

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->flushingEvents:Ljava/util/ArrayDeque;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-void
.end method

.method public i(ILcom/google/android/exoplayer2/util/s$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/s$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/s;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/s;->queuedEvents:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    new-instance v2, Lcom/google/android/exoplayer2/util/r;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/util/r;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/s$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/exoplayer2/util/s$c;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/s;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/s$b;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/s$c;->c(Lcom/google/android/exoplayer2/util/s$b;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 30
    const/4 v0, 0x1

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/s;->released:Z

    .line 33
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/s;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/exoplayer2/util/s$c;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/s$c;->listener:Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/s;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/s$b;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/s$c;->c(Lcom/google/android/exoplayer2/util/s$b;)V

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/s;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public l(ILcom/google/android/exoplayer2/util/s$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/s$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/s;->f()V

    .line 7
    return-void
.end method
