.class public Lcom/google/android/exoplayer2/drm/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/v$a$a;
    }
.end annotation


# instance fields
.field private final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/drm/v$a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/drm/v$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/b0$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/drm/v$a$a;",
            ">;I",
            "Lcom/google/android/exoplayer2/source/b0$b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/v$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lcom/google/android/exoplayer2/drm/v$a;->windowIndex:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/v$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/v$a;->s(Lcom/google/android/exoplayer2/drm/v;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/v$a;->o(Lcom/google/android/exoplayer2/drm/v;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/v$a;->n(Lcom/google/android/exoplayer2/drm/v;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/v$a;->p(Lcom/google/android/exoplayer2/drm/v;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/v$a;->r(Lcom/google/android/exoplayer2/drm/v;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/v$a;->q(Lcom/google/android/exoplayer2/drm/v;I)V

    return-void
.end method

.method private synthetic n(Lcom/google/android/exoplayer2/drm/v;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/v$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/v;->q(ILcom/google/android/exoplayer2/source/b0$b;)V

    .line 8
    return-void
.end method

.method private synthetic o(Lcom/google/android/exoplayer2/drm/v;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/v$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/v;->K(ILcom/google/android/exoplayer2/source/b0$b;)V

    .line 8
    return-void
.end method

.method private synthetic p(Lcom/google/android/exoplayer2/drm/v;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/v$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/v;->v(ILcom/google/android/exoplayer2/source/b0$b;)V

    .line 8
    return-void
.end method

.method private synthetic q(Lcom/google/android/exoplayer2/drm/v;I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/v$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/v;->L(ILcom/google/android/exoplayer2/source/b0$b;)V

    .line 8
    .line 9
    iget v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->windowIndex:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/v$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/drm/v;->r(ILcom/google/android/exoplayer2/source/b0$b;I)V

    .line 15
    return-void
.end method

.method private synthetic r(Lcom/google/android/exoplayer2/drm/v;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/v$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/drm/v;->O(ILcom/google/android/exoplayer2/source/b0$b;Ljava/lang/Exception;)V

    .line 8
    return-void
.end method

.method private synthetic s(Lcom/google/android/exoplayer2/drm/v;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/v$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/v;->T(ILcom/google/android/exoplayer2/source/b0$b;)V

    .line 8
    return-void
.end method


# virtual methods
.method public g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/v;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/exoplayer2/drm/v$a$a;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/drm/v$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/v;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/v$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->listener:Lcom/google/android/exoplayer2/drm/v;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/drm/t;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/t;-><init>(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/v$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->listener:Lcom/google/android/exoplayer2/drm/v;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/drm/s;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/s;-><init>(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/v$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->listener:Lcom/google/android/exoplayer2/drm/v;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/drm/u;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/u;-><init>(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/v$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->listener:Lcom/google/android/exoplayer2/drm/v;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/drm/r;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/drm/r;-><init>(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public l(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/v$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->listener:Lcom/google/android/exoplayer2/drm/v;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/drm/q;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/drm/q;-><init>(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;Ljava/lang/Exception;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/v$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->listener:Lcom/google/android/exoplayer2/drm/v;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/drm/p;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/p;-><init>(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/drm/v;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/o0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/drm/v;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/v$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/v$a$a;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/v$a$a;->listener:Lcom/google/android/exoplayer2/drm/v;

    .line 21
    .line 22
    if-ne v2, p1, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/v$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public u(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/drm/v$a;
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/drm/v$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/v$a;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/drm/v$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/b0$b;)V

    .line 8
    return-object v0
.end method
