.class public abstract Lcom/google/android/exoplayer2/source/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/b0;


# instance fields
.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

.field private final enabledMediaSourceCallers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/exoplayer2/source/b0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

.field private looper:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaSourceCallers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/b0$c;",
            ">;"
        }
    .end annotation
.end field

.field private playerId:Lcom/google/android/exoplayer2/analytics/t1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timeline:Lcom/google/android/exoplayer2/z3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->mediaSourceCallers:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/exoplayer2/source/h0$a;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/h0$a;-><init>()V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 26
    .line 27
    new-instance v0, Lcom/google/android/exoplayer2/drm/v$a;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/v$a;-><init>()V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/source/b0$c;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->mediaSourceCallers:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->mediaSourceCallers:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a;->looper:Landroid/os/Looper;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/a;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->y()V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->h(Lcom/google/android/exoplayer2/source/b0$c;)V

    .line 33
    :goto_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/source/h0;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/h0$a;->w(Lcom/google/android/exoplayer2/source/h0;)V

    .line 6
    return-void
.end method

.method public final d(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V
    .locals 1

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/h0$a;->f(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V

    .line 12
    return-void
.end method

.method public final e(Lcom/google/android/exoplayer2/source/b0$c;Lcom/google/android/exoplayer2/upstream/m0;Lcom/google/android/exoplayer2/analytics/t1;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/upstream/m0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->looper:Landroid/os/Looper;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/a;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    .line 20
    .line 21
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->mediaSourceCallers:Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->looper:Landroid/os/Looper;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->looper:Landroid/os/Looper;

    .line 33
    .line 34
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/a;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/a;->w(Lcom/google/android/exoplayer2/upstream/m0;)V

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_2
    if-eqz p3, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->g(Lcom/google/android/exoplayer2/source/b0$c;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, p0, p3}, Lcom/google/android/exoplayer2/source/b0$c;->a(Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V

    .line 50
    :cond_3
    :goto_2
    return-void
.end method

.method public final g(Lcom/google/android/exoplayer2/source/b0$c;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->looper:Landroid/os/Looper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->t()V

    .line 22
    :cond_0
    return-void
.end method

.method public final h(Lcom/google/android/exoplayer2/source/b0$c;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/a;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->s()V

    .line 27
    :cond_0
    return-void
.end method

.method public final i(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/v;)V
    .locals 1

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/v$a;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/v;)V

    .line 12
    return-void
.end method

.method public final k(Lcom/google/android/exoplayer2/drm/v;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/v$a;->t(Lcom/google/android/exoplayer2/drm/v;)V

    .line 6
    return-void
.end method

.method protected final l(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/drm/v$a;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/v$a;->u(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/drm/v$a;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected final m(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/drm/v$a;
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/v$a;->u(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/drm/v$a;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected final n(ILcom/google/android/exoplayer2/source/b0$b;J)Lcom/google/android/exoplayer2/source/h0$a;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/h0$a;->x(ILcom/google/android/exoplayer2/source/b0$b;J)Lcom/google/android/exoplayer2/source/h0$a;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public synthetic o()Lcom/google/android/exoplayer2/z3;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/a0;->a(Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/z3;

    move-result-object v0

    return-object v0
.end method

.method protected final p(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/h0$a;
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->eventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/exoplayer2/source/h0$a;->x(ILcom/google/android/exoplayer2/source/b0$b;J)Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public synthetic r()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/a0;->b(Lcom/google/android/exoplayer2/source/b0;)Z

    move-result v0

    return v0
.end method

.method protected s()V
    .locals 0

    .line 1
    return-void
.end method

.method protected t()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final u()Lcom/google/android/exoplayer2/analytics/t1;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/analytics/t1;

    .line 9
    return-object v0
.end method

.method protected final v()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method protected abstract w(Lcom/google/android/exoplayer2/upstream/m0;)V
    .param p1    # Lcom/google/android/exoplayer2/upstream/m0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected final x(Lcom/google/android/exoplayer2/z3;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->mediaSourceCallers:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/google/android/exoplayer2/source/b0$c;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/source/b0$c;->a(Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method protected abstract y()V
.end method
