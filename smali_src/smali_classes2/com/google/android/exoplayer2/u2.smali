.class final Lcom/google/android/exoplayer2/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/u2$a;,
        Lcom/google/android/exoplayer2/u2$b;,
        Lcom/google/android/exoplayer2/u2$c;,
        Lcom/google/android/exoplayer2/u2$d;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSourceList"


# instance fields
.field private final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/u2$c;",
            "Lcom/google/android/exoplayer2/u2$b;",
            ">;"
        }
    .end annotation
.end field

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

.field private final enabledMediaSourceHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/u2$c;",
            ">;"
        }
    .end annotation
.end field

.field private isPrepared:Z

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/y;",
            "Lcom/google/android/exoplayer2/u2$c;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/u2$c;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/u2$c;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceListInfoListener:Lcom/google/android/exoplayer2/u2$d;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/m0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final playerId:Lcom/google/android/exoplayer2/analytics/t1;

.field private shuffleOrder:Lcom/google/android/exoplayer2/source/y0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/u2$d;Lcom/google/android/exoplayer2/analytics/a;Landroid/os/Handler;Lcom/google/android/exoplayer2/analytics/t1;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/u2;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceListInfoListener:Lcom/google/android/exoplayer2/u2$d;

    .line 8
    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/source/y0$a;

    .line 10
    const/4 p4, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p4}, Lcom/google/android/exoplayer2/source/y0$a;-><init>(I)V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 16
    .line 17
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 23
    .line 24
    new-instance p1, Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceByUid:Ljava/util/Map;

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 37
    .line 38
    new-instance p1, Lcom/google/android/exoplayer2/source/h0$a;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/h0$a;-><init>()V

    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 44
    .line 45
    new-instance p4, Lcom/google/android/exoplayer2/drm/v$a;

    .line 46
    .line 47
    .line 48
    invoke-direct {p4}, Lcom/google/android/exoplayer2/drm/v$a;-><init>()V

    .line 49
    .line 50
    iput-object p4, p0, Lcom/google/android/exoplayer2/u2;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 51
    .line 52
    new-instance v0, Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    iput-object v0, p0, Lcom/google/android/exoplayer2/u2;->childSources:Ljava/util/HashMap;

    .line 58
    .line 59
    new-instance v0, Ljava/util/HashSet;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 63
    .line 64
    iput-object v0, p0, Lcom/google/android/exoplayer2/u2;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/h0$a;->f(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, p3, p2}, Lcom/google/android/exoplayer2/drm/v$a;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/v;)V

    .line 71
    return-void
.end method

.method private B(II)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    sub-int/2addr p2, v0

    .line 3
    .line 4
    :goto_0
    if-lt p2, p1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lcom/google/android/exoplayer2/u2$c;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceByUid:Ljava/util/Map;

    .line 15
    .line 16
    iget-object v3, v1, Lcom/google/android/exoplayer2/u2$c;->uid:Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/google/android/exoplayer2/u2$c;->mediaSource:Lcom/google/android/exoplayer2/source/w;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/w;->T()Lcom/google/android/exoplayer2/z3;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 29
    move-result v2

    .line 30
    neg-int v2, v2

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p2, v2}, Lcom/google/android/exoplayer2/u2;->g(II)V

    .line 34
    .line 35
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/u2$c;->isRemoved:Z

    .line 36
    .line 37
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/u2;->isPrepared:Z

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/u2;->u(Lcom/google/android/exoplayer2/u2$c;)V

    .line 43
    .line 44
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/u2;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2;->t(Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/u2;)Lcom/google/android/exoplayer2/source/h0$a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/u2;)Lcom/google/android/exoplayer2/drm/v$a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/u2;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/u2$c;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/u2;->n(Lcom/google/android/exoplayer2/u2$c;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/u2$c;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/u2;->r(Lcom/google/android/exoplayer2/u2$c;I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private g(II)V
    .locals 2

    .line 1
    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/exoplayer2/u2$c;

    .line 17
    .line 18
    iget v1, v0, Lcom/google/android/exoplayer2/u2$c;->firstWindowIndexInChild:I

    .line 19
    add-int/2addr v1, p2

    .line 20
    .line 21
    iput v1, v0, Lcom/google/android/exoplayer2/u2$c;->firstWindowIndexInChild:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/u2$c;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->childSources:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/u2$b;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p1, Lcom/google/android/exoplayer2/u2$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/google/android/exoplayer2/u2$b;->caller:Lcom/google/android/exoplayer2/source/b0$c;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/b0;->h(Lcom/google/android/exoplayer2/source/b0$c;)V

    .line 18
    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/exoplayer2/u2$c;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/exoplayer2/u2$c;->activeMediaPeriodIds:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/u2;->j(Lcom/google/android/exoplayer2/u2$c;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/u2$c;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->childSources:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/google/android/exoplayer2/u2$b;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lcom/google/android/exoplayer2/u2$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/exoplayer2/u2$b;->caller:Lcom/google/android/exoplayer2/source/b0$c;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/b0;->g(Lcom/google/android/exoplayer2/source/b0$c;)V

    .line 23
    :cond_0
    return-void
.end method

.method private static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static n(Lcom/google/android/exoplayer2/u2$c;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/u2$c;->activeMediaPeriodIds:Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/u2$c;->activeMediaPeriodIds:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/google/android/exoplayer2/source/b0$b;

    .line 18
    .line 19
    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 20
    .line 21
    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 22
    .line 23
    cmp-long v1, v1, v3

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/u2;->p(Lcom/google/android/exoplayer2/u2$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/b0$b;->c(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method private static o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->C(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static p(Lcom/google/android/exoplayer2/u2$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/u2$c;->uid:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->E(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static r(Lcom/google/android/exoplayer2/u2$c;I)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/u2$c;->firstWindowIndexInChild:I

    .line 3
    add-int/2addr p1, p0

    .line 4
    return p1
.end method

.method private synthetic t(Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceListInfoListener:Lcom/google/android/exoplayer2/u2$d;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/u2$d;->a()V

    .line 6
    return-void
.end method

.method private u(Lcom/google/android/exoplayer2/u2$c;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/u2$c;->isRemoved:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/android/exoplayer2/u2$c;->activeMediaPeriodIds:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->childSources:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/google/android/exoplayer2/u2$b;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/google/android/exoplayer2/u2$b;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/google/android/exoplayer2/u2$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/google/android/exoplayer2/u2$b;->caller:Lcom/google/android/exoplayer2/source/b0$c;

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/b0;->a(Lcom/google/android/exoplayer2/source/b0$c;)V

    .line 34
    .line 35
    iget-object v1, v0, Lcom/google/android/exoplayer2/u2$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 36
    .line 37
    iget-object v2, v0, Lcom/google/android/exoplayer2/u2$b;->eventListener:Lcom/google/android/exoplayer2/u2$a;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/b0;->b(Lcom/google/android/exoplayer2/source/h0;)V

    .line 41
    .line 42
    iget-object v1, v0, Lcom/google/android/exoplayer2/u2$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/google/android/exoplayer2/u2$b;->eventListener:Lcom/google/android/exoplayer2/u2$a;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/b0;->k(Lcom/google/android/exoplayer2/drm/v;)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method private x(Lcom/google/android/exoplayer2/u2$c;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/u2$c;->mediaSource:Lcom/google/android/exoplayer2/source/w;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/t2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/t2;-><init>(Lcom/google/android/exoplayer2/u2;)V

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/exoplayer2/u2$a;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/u2$a;-><init>(Lcom/google/android/exoplayer2/u2;Lcom/google/android/exoplayer2/u2$c;)V

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/exoplayer2/u2;->childSources:Ljava/util/HashMap;

    .line 15
    .line 16
    new-instance v4, Lcom/google/android/exoplayer2/u2$b;

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/u2$b;-><init>(Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/source/b0$c;Lcom/google/android/exoplayer2/u2$a;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/exoplayer2/util/o0;->w()Landroid/os/Handler;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/source/b0;->d(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/exoplayer2/util/o0;->w()Landroid/os/Handler;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/source/b0;->i(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/v;)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/exoplayer2/u2;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/source/b0;->e(Lcom/google/android/exoplayer2/source/b0$c;Lcom/google/android/exoplayer2/upstream/m0;Lcom/google/android/exoplayer2/analytics/t1;)V

    .line 44
    return-void
.end method


# virtual methods
.method public A(IILcom/google/android/exoplayer2/source/y0;)Lcom/google/android/exoplayer2/z3;
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    if-gt p1, p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u2;->q()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-gt p2, v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 17
    .line 18
    iput-object p3, p0, Lcom/google/android/exoplayer2/u2;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2;->B(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u2;->i()Lcom/google/android/exoplayer2/z3;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public C(Ljava/util/List;Lcom/google/android/exoplayer2/source/y0;)Lcom/google/android/exoplayer2/z3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/u2$c;",
            ">;",
            "Lcom/google/android/exoplayer2/source/y0;",
            ")",
            "Lcom/google/android/exoplayer2/z3;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/u2;->B(II)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/u2;->f(ILjava/util/List;Lcom/google/android/exoplayer2/source/y0;)Lcom/google/android/exoplayer2/z3;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public D(Lcom/google/android/exoplayer2/source/y0;)Lcom/google/android/exoplayer2/z3;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u2;->q()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/y0;->getLength()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eq v1, v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/y0;->cloneAndClear()Lcom/google/android/exoplayer2/source/y0;

    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/source/y0;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/y0;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u2;->i()Lcom/google/android/exoplayer2/z3;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public f(ILjava/util/List;Lcom/google/android/exoplayer2/source/y0;)Lcom/google/android/exoplayer2/z3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/u2$c;",
            ">;",
            "Lcom/google/android/exoplayer2/source/y0;",
            ")",
            "Lcom/google/android/exoplayer2/z3;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/u2;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 9
    move p3, p1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, p1

    .line 15
    .line 16
    if-ge p3, v0, :cond_3

    .line 17
    .line 18
    sub-int v0, p3, p1

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/google/android/exoplayer2/u2$c;

    .line 25
    .line 26
    if-lez p3, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 29
    .line 30
    add-int/lit8 v2, p3, -0x1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Lcom/google/android/exoplayer2/u2$c;

    .line 37
    .line 38
    iget-object v2, v1, Lcom/google/android/exoplayer2/u2$c;->mediaSource:Lcom/google/android/exoplayer2/source/w;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/w;->T()Lcom/google/android/exoplayer2/z3;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    iget v1, v1, Lcom/google/android/exoplayer2/u2$c;->firstWindowIndexInChild:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 48
    move-result v2

    .line 49
    add-int/2addr v1, v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/u2$c;->c(I)V

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/u2$c;->c(I)V

    .line 58
    .line 59
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/u2$c;->mediaSource:Lcom/google/android/exoplayer2/source/w;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/w;->T()Lcom/google/android/exoplayer2/z3;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 67
    move-result v1

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p3, v1}, Lcom/google/android/exoplayer2/u2;->g(II)V

    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 73
    .line 74
    .line 75
    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    .line 77
    iget-object v1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceByUid:Ljava/util/Map;

    .line 78
    .line 79
    iget-object v2, v0, Lcom/google/android/exoplayer2/u2$c;->uid:Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/u2;->isPrepared:Z

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/u2;->x(Lcom/google/android/exoplayer2/u2$c;)V

    .line 90
    .line 91
    iget-object v1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 95
    move-result v1

    .line 96
    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    iget-object v1, p0, Lcom/google/android/exoplayer2/u2;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_2

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/u2;->j(Lcom/google/android/exoplayer2/u2$c;)V

    .line 107
    .line 108
    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u2;->i()Lcom/google/android/exoplayer2/z3;

    .line 113
    move-result-object p1

    .line 114
    return-object p1
.end method

.method public h(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/y;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/u2;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/exoplayer2/u2;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/b0$b;->c(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceByUid:Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/google/android/exoplayer2/u2$c;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/google/android/exoplayer2/u2$c;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/u2;->l(Lcom/google/android/exoplayer2/u2$c;)V

    .line 34
    .line 35
    iget-object v1, v0, Lcom/google/android/exoplayer2/u2$c;->activeMediaPeriodIds:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    iget-object v1, v0, Lcom/google/android/exoplayer2/u2$c;->mediaSource:Lcom/google/android/exoplayer2/source/w;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/w;->Q(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/v;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iget-object p2, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/google/android/exoplayer2/u2;->k()V

    .line 53
    return-object p1
.end method

.method public i()Lcom/google/android/exoplayer2/z3;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/exoplayer2/z3;->EMPTY:Lcom/google/android/exoplayer2/z3;

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    .line 15
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    .line 21
    if-ge v0, v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Lcom/google/android/exoplayer2/u2$c;

    .line 30
    .line 31
    iput v1, v2, Lcom/google/android/exoplayer2/u2$c;->firstWindowIndexInChild:I

    .line 32
    .line 33
    iget-object v2, v2, Lcom/google/android/exoplayer2/u2$c;->mediaSource:Lcom/google/android/exoplayer2/source/w;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/w;->T()Lcom/google/android/exoplayer2/z3;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 41
    move-result v2

    .line 42
    add-int/2addr v1, v2

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/i3;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/google/android/exoplayer2/u2;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/i3;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/y0;)V

    .line 55
    return-object v0
.end method

.method public q()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u2;->isPrepared:Z

    return v0
.end method

.method public v(IIILcom/google/android/exoplayer2/source/y0;)Lcom/google/android/exoplayer2/z3;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    if-gt p1, p2, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u2;->q()I

    .line 9
    move-result v1

    .line 10
    .line 11
    if-gt p2, v1, :cond_0

    .line 12
    .line 13
    if-ltz p3, :cond_0

    .line 14
    move v1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 20
    .line 21
    iput-object p4, p0, Lcom/google/android/exoplayer2/u2;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 22
    .line 23
    if-eq p1, p2, :cond_3

    .line 24
    .line 25
    if-ne p1, p3, :cond_1

    .line 26
    goto :goto_2

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result p4

    .line 31
    .line 32
    sub-int v1, p2, p1

    .line 33
    add-int/2addr v1, p3

    .line 34
    sub-int/2addr v1, v0

    .line 35
    .line 36
    add-int/lit8 v0, p2, -0x1

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 40
    move-result v0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Lcom/google/android/exoplayer2/u2$c;

    .line 49
    .line 50
    iget v1, v1, Lcom/google/android/exoplayer2/u2$c;->firstWindowIndexInChild:I

    .line 51
    .line 52
    iget-object v2, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 53
    .line 54
    .line 55
    invoke-static {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/util/o0;->v0(Ljava/util/List;III)V

    .line 56
    .line 57
    :goto_1
    if-gt p4, v0, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Lcom/google/android/exoplayer2/u2$c;

    .line 66
    .line 67
    iput v1, p1, Lcom/google/android/exoplayer2/u2$c;->firstWindowIndexInChild:I

    .line 68
    .line 69
    iget-object p1, p1, Lcom/google/android/exoplayer2/u2$c;->mediaSource:Lcom/google/android/exoplayer2/source/w;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/w;->T()Lcom/google/android/exoplayer2/z3;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 77
    move-result p1

    .line 78
    add-int/2addr v1, p1

    .line 79
    .line 80
    add-int/lit8 p4, p4, 0x1

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u2;->i()Lcom/google/android/exoplayer2/z3;

    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u2;->i()Lcom/google/android/exoplayer2/z3;

    .line 90
    move-result-object p1

    .line 91
    return-object p1
.end method

.method public w(Lcom/google/android/exoplayer2/upstream/m0;)V
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/upstream/m0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/u2;->isPrepared:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-ge p1, v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceHolders:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/google/android/exoplayer2/u2$c;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/u2;->x(Lcom/google/android/exoplayer2/u2$c;)V

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/exoplayer2/u2;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/u2;->isPrepared:Z

    .line 40
    return-void
.end method

.method public y()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->childSources:Ljava/util/HashMap;

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
    check-cast v1, Lcom/google/android/exoplayer2/u2$b;

    .line 23
    .line 24
    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/u2$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 25
    .line 26
    iget-object v3, v1, Lcom/google/android/exoplayer2/u2$b;->caller:Lcom/google/android/exoplayer2/source/b0$c;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/b0;->a(Lcom/google/android/exoplayer2/source/b0$c;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v2

    .line 32
    .line 33
    const-string v3, "MediaSourceList"

    .line 34
    .line 35
    const-string v4, "Failed to release child source."

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v4, v2}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    :goto_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/u2$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 41
    .line 42
    iget-object v3, v1, Lcom/google/android/exoplayer2/u2$b;->eventListener:Lcom/google/android/exoplayer2/u2$a;

    .line 43
    .line 44
    .line 45
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/b0;->b(Lcom/google/android/exoplayer2/source/h0;)V

    .line 46
    .line 47
    iget-object v2, v1, Lcom/google/android/exoplayer2/u2$b;->mediaSource:Lcom/google/android/exoplayer2/source/b0;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/google/android/exoplayer2/u2$b;->eventListener:Lcom/google/android/exoplayer2/u2$a;

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/b0;->k(Lcom/google/android/exoplayer2/drm/v;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->childSources:Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 64
    const/4 v0, 0x0

    .line 65
    .line 66
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/u2;->isPrepared:Z

    .line 67
    return-void
.end method

.method public z(Lcom/google/android/exoplayer2/source/y;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/u2$c;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/exoplayer2/u2$c;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/u2$c;->mediaSource:Lcom/google/android/exoplayer2/source/w;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/w;->f(Lcom/google/android/exoplayer2/source/y;)V

    .line 20
    .line 21
    iget-object v1, v0, Lcom/google/android/exoplayer2/u2$c;->activeMediaPeriodIds:Ljava/util/List;

    .line 22
    .line 23
    check-cast p1, Lcom/google/android/exoplayer2/source/v;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/v;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/google/android/exoplayer2/u2;->k()V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/u2;->u(Lcom/google/android/exoplayer2/u2$c;)V

    .line 43
    return-void
.end method
