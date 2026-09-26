.class public abstract Lcom/google/android/exoplayer2/source/g;
.super Lcom/google/android/exoplayer2/source/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/g$a;,
        Lcom/google/android/exoplayer2/source/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/exoplayer2/source/a;"
    }
.end annotation


# instance fields
.field private final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/google/android/exoplayer2/source/g$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private eventHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/m0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/g;->childSources:Ljava/util/HashMap;

    .line 11
    return-void
.end method

.method private synthetic D(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/g;->E(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V

    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/google/android/exoplayer2/source/g;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/g;->D(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V

    return-void
.end method


# virtual methods
.method protected A(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/b0$b;",
            ")",
            "Lcom/google/android/exoplayer2/source/b0$b;"
        }
    .end annotation

    .line 1
    return-object p2
.end method

.method protected B(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .line 1
    return-wide p2
.end method

.method protected C(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1
    return p2
.end method

.method protected abstract E(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/b0;",
            "Lcom/google/android/exoplayer2/z3;",
            ")V"
        }
    .end annotation
.end method

.method protected final F(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/b0;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g;->childSources:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/source/f;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/source/f;-><init>(Lcom/google/android/exoplayer2/source/g;Ljava/lang/Object;)V

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/exoplayer2/source/g$a;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/g$a;-><init>(Lcom/google/android/exoplayer2/source/g;Ljava/lang/Object;)V

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/g;->childSources:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v3, Lcom/google/android/exoplayer2/source/g$b;

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, p2, v0, v1}, Lcom/google/android/exoplayer2/source/g$b;-><init>(Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/source/b0$c;Lcom/google/android/exoplayer2/source/g$a;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g;->eventHandler:Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/b0;->d(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V

    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g;->eventHandler:Landroid/os/Handler;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/b0;->i(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/v;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->u()Lcom/google/android/exoplayer2/analytics/t1;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-interface {p2, v0, p1, v1}, Lcom/google/android/exoplayer2/source/b0;->e(Lcom/google/android/exoplayer2/source/b0$c;Lcom/google/android/exoplayer2/upstream/m0;Lcom/google/android/exoplayer2/analytics/t1;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->v()Z

    .line 66
    move-result p1

    .line 67
    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    .line 71
    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/source/b0;->h(Lcom/google/android/exoplayer2/source/b0$c;)V

    .line 72
    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g;->childSources:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/exoplayer2/source/g$b;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/g$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/b0;->maybeThrowSourceInfoRefreshError()V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method protected s()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g;->childSources:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/exoplayer2/source/g$b;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/g$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/g$b;->caller:Lcom/google/android/exoplayer2/source/b0$c;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/b0;->h(Lcom/google/android/exoplayer2/source/b0$c;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method protected t()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g;->childSources:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/exoplayer2/source/g$b;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/g$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/g$b;->caller:Lcom/google/android/exoplayer2/source/b0$c;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/b0;->g(Lcom/google/android/exoplayer2/source/b0$c;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method protected w(Lcom/google/android/exoplayer2/upstream/m0;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/m0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/g;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/exoplayer2/util/o0;->u()Landroid/os/Handler;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/g;->eventHandler:Landroid/os/Handler;

    .line 9
    return-void
.end method

.method protected y()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g;->childSources:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/exoplayer2/source/g$b;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/g$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 25
    .line 26
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/g$b;->caller:Lcom/google/android/exoplayer2/source/b0$c;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/b0;->a(Lcom/google/android/exoplayer2/source/b0$c;)V

    .line 30
    .line 31
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/g$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 32
    .line 33
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/g$b;->eventListener:Lcom/google/android/exoplayer2/source/g$a;

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/b0;->b(Lcom/google/android/exoplayer2/source/h0;)V

    .line 37
    .line 38
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/g$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/g$b;->eventListener:Lcom/google/android/exoplayer2/source/g$a;

    .line 41
    .line 42
    .line 43
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/b0;->k(Lcom/google/android/exoplayer2/drm/v;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g;->childSources:Ljava/util/HashMap;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 50
    return-void
.end method
