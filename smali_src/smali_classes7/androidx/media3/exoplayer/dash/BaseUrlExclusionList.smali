.class public final Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final excludedPriorities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final excludedServiceLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private final selectionsTaken:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Random;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->selectionsTaken:Ljava/util/Map;

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->random:Ljava/util/Random;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->excludedServiceLocations:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->excludedPriorities:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->d(Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;)I

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;JLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 26
    move-result-wide p1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->excludedServiceLocations:Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->h(JLjava/util/Map;)V

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->excludedPriorities:Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->h(JLjava/util/Map;)V

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result v2

    .line 25
    .line 26
    if-ge v1, v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 33
    .line 34
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->excludedServiceLocations:Ljava/util/Map;

    .line 35
    .line 36
    iget-object v4, v2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->excludedPriorities:Ljava/util/Map;

    .line 45
    .line 46
    iget v4, v2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 47
    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    .line 53
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 54
    move-result v3

    .line 55
    .line 56
    if-nez v3, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-object v0
.end method

.method private static d(Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 3
    .line 4
    iget v1, p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    :goto_0
    return v0
.end method

.method public static f(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 19
    .line 20
    iget v2, v2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method private static h(JLjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Ljava/util/Map$Entry;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 35
    move-result-wide v3

    .line 36
    .line 37
    cmp-long v3, v3, p0

    .line 38
    .line 39
    if-gtz v3, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    move-result p1

    .line 53
    .line 54
    if-ge p0, p1, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    add-int/lit8 p0, p0, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    return-void
.end method

.method private k(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/BaseUrl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;)",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v3

    .line 8
    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    check-cast v3, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 16
    .line 17
    iget v3, v3, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->weight:I

    .line 18
    add-int/2addr v2, v3

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->random:Ljava/util/Random;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 27
    move-result v1

    .line 28
    move v2, v0

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    move-result v3

    .line 33
    .line 34
    if-ge v0, v3, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    check-cast v3, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 41
    .line 42
    iget v4, v3, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->weight:I

    .line 43
    add-int/2addr v2, v4

    .line 44
    .line 45
    if-ge v1, v2, :cond_1

    .line 46
    return-object v3

    .line 47
    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/h0;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 56
    return-object p1
.end method


# virtual methods
.method public e(Landroidx/media3/exoplayer/dash/manifest/BaseUrl;J)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p2

    .line 6
    .line 7
    iget-object p2, p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p3, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->excludedServiceLocations:Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0, v1, p3}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->b(Ljava/lang/Object;JLjava/util/Map;)V

    .line 13
    .line 14
    iget p1, p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 15
    .line 16
    const/high16 p2, -0x80000000

    .line 17
    .line 18
    if-eq p1, p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->excludedPriorities:Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0, v1, p2}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->b(Ljava/lang/Object;JLjava/util/Map;)V

    .line 28
    :cond_0
    return-void
.end method

.method public g(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->c(Ljava/util/List;)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 23
    .line 24
    iget v2, v2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public i()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->excludedServiceLocations:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->excludedPriorities:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->selectionsTaken:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    return-void
.end method

.method public j(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/BaseUrl;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;)",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->c(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/google/common/collect/h0;->d(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 19
    return-object p1

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/dash/a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/media3/exoplayer/dash/a;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 40
    .line 41
    iget v2, v2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 42
    move v3, v1

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    move-result v4

    .line 47
    .line 48
    if-ge v3, v4, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    check-cast v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 55
    .line 56
    iget v5, v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 57
    .line 58
    if-eq v2, v5, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    move-result v2

    .line 63
    const/4 v3, 0x1

    .line 64
    .line 65
    if-ne v2, v3, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 72
    return-object p1

    .line 73
    .line 74
    :cond_1
    new-instance v5, Landroid/util/Pair;

    .line 75
    .line 76
    iget-object v6, v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 77
    .line 78
    iget v4, v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->weight:I

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    .line 85
    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->selectionsTaken:Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 100
    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 105
    move-result v2

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->k(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->selectionsTaken:Ljava/util/Map;

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_3
    return-object v2
.end method
