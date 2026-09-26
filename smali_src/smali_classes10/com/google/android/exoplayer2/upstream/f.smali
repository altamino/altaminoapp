.class public abstract Lcom/google/android/exoplayer2/upstream/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k;


# instance fields
.field private dataSpec:Lcom/google/android/exoplayer2/upstream/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final isNetwork:Z

.field private listenerCount:I

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/m0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/f;->isNetwork:Z

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/f;->listeners:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/exoplayer2/upstream/m0;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/f;->listeners:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/f;->listeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/f;->listenerCount:I

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/f;->listenerCount:I

    .line 23
    :cond_0
    return-void
.end method

.method protected final d(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/f;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/upstream/o;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/f;->listenerCount:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/f;->listeners:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    check-cast v2, Lcom/google/android/exoplayer2/upstream/m0;

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/f;->isNetwork:Z

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, p0, v0, v3, p1}, Lcom/google/android/exoplayer2/upstream/m0;->b(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/o;ZI)V

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method protected final e()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/f;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/upstream/o;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/f;->listenerCount:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/f;->listeners:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    check-cast v2, Lcom/google/android/exoplayer2/upstream/m0;

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/f;->isNetwork:Z

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, p0, v0, v3}, Lcom/google/android/exoplayer2/upstream/m0;->a(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/o;Z)V

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/f;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 33
    return-void
.end method

.method protected final f(Lcom/google/android/exoplayer2/upstream/o;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/f;->listenerCount:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/f;->listeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Lcom/google/android/exoplayer2/upstream/m0;

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/f;->isNetwork:Z

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, p0, p1, v2}, Lcom/google/android/exoplayer2/upstream/m0;->g(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/o;Z)V

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method protected final g(Lcom/google/android/exoplayer2/upstream/o;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/f;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/f;->listenerCount:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/f;->listeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/exoplayer2/upstream/m0;

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/f;->isNetwork:Z

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, p0, p1, v2}, Lcom/google/android/exoplayer2/upstream/m0;->e(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/o;Z)V

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/j;->a(Lcom/google/android/exoplayer2/upstream/k;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
