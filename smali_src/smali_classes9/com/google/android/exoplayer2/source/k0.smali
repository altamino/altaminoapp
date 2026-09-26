.class public final Lcom/google/android/exoplayer2/source/k0;
.super Lcom/google/android/exoplayer2/source/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/k0$a;,
        Lcom/google/android/exoplayer2/source/k0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/g<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_MEDIA_ITEM:Lcom/google/android/exoplayer2/i2;

.field private static final PERIOD_COUNT_UNSET:I = -0x1


# instance fields
.field private final adjustPeriodTimeOffsets:Z

.field private final clipDurations:Z

.field private final clippedDurationsUs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final clippedMediaPeriods:Lcom/google/common/collect/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m0<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/source/d;",
            ">;"
        }
    .end annotation
.end field

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/i;

.field private final mediaSources:[Lcom/google/android/exoplayer2/source/b0;

.field private mergeError:Lcom/google/android/exoplayer2/source/k0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingTimelineSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/b0;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private periodTimeOffsetsUs:[[J

.field private final timelines:[Lcom/google/android/exoplayer2/z3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/i2$c;-><init>()V

    .line 6
    .line 7
    const-string v1, "MergingMediaSource"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i2$c;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2$c;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$c;->a()Lcom/google/android/exoplayer2/i2;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lcom/google/android/exoplayer2/source/k0;->EMPTY_MEDIA_ITEM:Lcom/google/android/exoplayer2/i2;

    .line 18
    return-void
.end method

.method public varargs constructor <init>(ZZLcom/google/android/exoplayer2/source/i;[Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/g;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/k0;->adjustPeriodTimeOffsets:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/k0;->clipDurations:Z

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/k0;->mediaSources:[Lcom/google/android/exoplayer2/source/b0;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/k0;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/i;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k0;->pendingTimelineSources:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/source/k0;->periodCount:I

    .line 6
    array-length p1, p4

    new-array p1, p1, [Lcom/google/android/exoplayer2/z3;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k0;->timelines:[Lcom/google/android/exoplayer2/z3;

    const/4 p1, 0x0

    new-array p1, p1, [[J

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k0;->periodTimeOffsetsUs:[[J

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k0;->clippedDurationsUs:Ljava/util/Map;

    .line 8
    invoke-static {}, Lcom/google/common/collect/n0;->a()Lcom/google/common/collect/n0$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/n0$e;->a()Lcom/google/common/collect/n0$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/n0$d;->e()Lcom/google/common/collect/j0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k0;->clippedMediaPeriods:Lcom/google/common/collect/m0;

    return-void
.end method

.method public varargs constructor <init>(ZZ[Lcom/google/android/exoplayer2/source/b0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/source/j;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/j;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/source/k0;-><init>(ZZLcom/google/android/exoplayer2/source/i;[Lcom/google/android/exoplayer2/source/b0;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/google/android/exoplayer2/source/b0;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/source/k0;-><init>(ZZ[Lcom/google/android/exoplayer2/source/b0;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/b0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/k0;-><init>(Z[Lcom/google/android/exoplayer2/source/b0;)V

    return-void
.end method

.method private G()V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/z3$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/z3$b;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    .line 9
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/source/k0;->periodCount:I

    .line 10
    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/k0;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 14
    .line 15
    aget-object v3, v3, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2, v0}, Lcom/google/android/exoplayer2/z3;->j(ILcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/z3$b;->q()J

    .line 23
    move-result-wide v3

    .line 24
    neg-long v3, v3

    .line 25
    const/4 v5, 0x1

    .line 26
    .line 27
    :goto_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/k0;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 28
    array-length v7, v6

    .line 29
    .line 30
    if-ge v5, v7, :cond_0

    .line 31
    .line 32
    aget-object v6, v6, v5

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v2, v0}, Lcom/google/android/exoplayer2/z3;->j(ILcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 36
    move-result-object v6

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/z3$b;->q()J

    .line 40
    move-result-wide v6

    .line 41
    neg-long v6, v6

    .line 42
    .line 43
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/k0;->periodTimeOffsetsUs:[[J

    .line 44
    .line 45
    aget-object v8, v8, v2

    .line 46
    .line 47
    sub-long v6, v3, v6

    .line 48
    .line 49
    aput-wide v6, v8, v5

    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method private J()V
    .locals 13

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/z3$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/z3$b;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    .line 9
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/source/k0;->periodCount:I

    .line 10
    .line 11
    if-ge v2, v3, :cond_5

    .line 12
    .line 13
    const-wide/high16 v3, -0x8000000000000000L

    .line 14
    move v5, v1

    .line 15
    move-wide v6, v3

    .line 16
    .line 17
    :goto_1
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/k0;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 18
    array-length v9, v8

    .line 19
    .line 20
    if-ge v5, v9, :cond_3

    .line 21
    .line 22
    aget-object v8, v8, v5

    .line 23
    .line 24
    .line 25
    invoke-virtual {v8, v2, v0}, Lcom/google/android/exoplayer2/z3;->j(ILcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 26
    move-result-object v8

    .line 27
    .line 28
    .line 29
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/z3$b;->m()J

    .line 30
    move-result-wide v8

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    cmp-long v10, v8, v10

    .line 38
    .line 39
    if-nez v10, :cond_0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_0
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/k0;->periodTimeOffsetsUs:[[J

    .line 43
    .line 44
    aget-object v10, v10, v2

    .line 45
    .line 46
    aget-wide v11, v10, v5

    .line 47
    add-long/2addr v8, v11

    .line 48
    .line 49
    cmp-long v10, v6, v3

    .line 50
    .line 51
    if-eqz v10, :cond_1

    .line 52
    .line 53
    cmp-long v10, v8, v6

    .line 54
    .line 55
    if-gez v10, :cond_2

    .line 56
    :cond_1
    move-wide v6, v8

    .line 57
    .line 58
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_3
    aget-object v3, v8, v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/z3;->q(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/k0;->clippedDurationsUs:Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    move-result-object v5

    .line 72
    .line 73
    .line 74
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/k0;->clippedMediaPeriods:Lcom/google/common/collect/m0;

    .line 77
    .line 78
    .line 79
    invoke-interface {v4, v3}, Lcom/google/common/collect/m0;->get(Ljava/lang/Object;)Ljava/util/Collection;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v4

    .line 89
    .line 90
    if-eqz v4, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    check-cast v4, Lcom/google/android/exoplayer2/source/d;

    .line 97
    .line 98
    const-wide/16 v8, 0x0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v8, v9, v6, v7}, Lcom/google/android/exoplayer2/source/d;->k(JJ)V

    .line 102
    goto :goto_3

    .line 103
    .line 104
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_5
    return-void
.end method


# virtual methods
.method protected bridge synthetic A(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/k0;->H(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic E(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/k0;->I(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V

    .line 6
    return-void
.end method

.method protected H(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    return-object p2
.end method

.method protected I(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/b0;Lcom/google/android/exoplayer2/z3;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->mergeError:Lcom/google/android/exoplayer2/source/k0$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/k0;->periodCount:I

    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/z3;->m()I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/exoplayer2/source/k0;->periodCount:I

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/z3;->m()I

    .line 22
    move-result v0

    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/exoplayer2/source/k0;->periodCount:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    new-instance p1, Lcom/google/android/exoplayer2/source/k0$b;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/source/k0$b;-><init>(I)V

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k0;->mergeError:Lcom/google/android/exoplayer2/source/k0$b;

    .line 34
    return-void

    .line 35
    .line 36
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->periodTimeOffsetsUs:[[J

    .line 37
    array-length v0, v0

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    iget v0, p0, Lcom/google/android/exoplayer2/source/k0;->periodCount:I

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/k0;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 44
    array-length v1, v1

    .line 45
    .line 46
    .line 47
    filled-new-array {v0, v1}, [I

    .line 48
    move-result-object v0

    .line 49
    .line 50
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, [[J

    .line 57
    .line 58
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->periodTimeOffsetsUs:[[J

    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->pendingTimelineSources:Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/k0;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 69
    move-result p1

    .line 70
    .line 71
    aput-object p3, p2, p1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/k0;->pendingTimelineSources:Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/k0;->adjustPeriodTimeOffsets:Z

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/k0;->G()V

    .line 87
    .line 88
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/k0;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 89
    .line 90
    aget-object p1, p1, v2

    .line 91
    .line 92
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/k0;->clipDurations:Z

    .line 93
    .line 94
    if-eqz p2, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/k0;->J()V

    .line 98
    .line 99
    new-instance p2, Lcom/google/android/exoplayer2/source/k0$a;

    .line 100
    .line 101
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/k0;->clippedDurationsUs:Ljava/util/Map;

    .line 102
    .line 103
    .line 104
    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/source/k0$a;-><init>(Lcom/google/android/exoplayer2/z3;Ljava/util/Map;)V

    .line 105
    move-object p1, p2

    .line 106
    .line 107
    .line 108
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->x(Lcom/google/android/exoplayer2/z3;)V

    .line 109
    :cond_6
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/y;
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->mediaSources:[Lcom/google/android/exoplayer2/source/b0;

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/y;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/k0;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    aget-object v2, v2, v3

    .line 11
    .line 12
    iget-object v4, p1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 16
    move-result v2

    .line 17
    .line 18
    :goto_0
    if-ge v3, v0, :cond_0

    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/k0;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 21
    .line 22
    aget-object v4, v4, v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/z3;->q(I)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/source/b0$b;->c(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/k0;->mediaSources:[Lcom/google/android/exoplayer2/source/b0;

    .line 33
    .line 34
    aget-object v5, v5, v3

    .line 35
    .line 36
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/k0;->periodTimeOffsetsUs:[[J

    .line 37
    .line 38
    aget-object v6, v6, v2

    .line 39
    .line 40
    aget-wide v7, v6, v3

    .line 41
    .line 42
    sub-long v6, p3, v7

    .line 43
    .line 44
    .line 45
    invoke-interface {v5, v4, p2, v6, v7}, Lcom/google/android/exoplayer2/source/b0;->c(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/y;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    aput-object v4, v1, v3

    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    new-instance v5, Lcom/google/android/exoplayer2/source/j0;

    .line 54
    .line 55
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/k0;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/i;

    .line 56
    .line 57
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/k0;->periodTimeOffsetsUs:[[J

    .line 58
    .line 59
    aget-object p3, p3, v2

    .line 60
    .line 61
    .line 62
    invoke-direct {v5, p2, p3, v1}, Lcom/google/android/exoplayer2/source/j0;-><init>(Lcom/google/android/exoplayer2/source/i;[J[Lcom/google/android/exoplayer2/source/y;)V

    .line 63
    .line 64
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/k0;->clipDurations:Z

    .line 65
    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    new-instance p2, Lcom/google/android/exoplayer2/source/d;

    .line 69
    const/4 v6, 0x1

    .line 70
    .line 71
    const-wide/16 v7, 0x0

    .line 72
    .line 73
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/k0;->clippedDurationsUs:Ljava/util/Map;

    .line 74
    .line 75
    iget-object p4, p1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    check-cast p3, Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object p3

    .line 86
    .line 87
    check-cast p3, Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 91
    move-result-wide v9

    .line 92
    move-object v4, p2

    .line 93
    .line 94
    .line 95
    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/source/d;-><init>(Lcom/google/android/exoplayer2/source/y;ZJJ)V

    .line 96
    .line 97
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/k0;->clippedMediaPeriods:Lcom/google/common/collect/m0;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-interface {p3, p1, p2}, Lcom/google/common/collect/m0;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    move-object v5, p2

    .line 104
    :cond_1
    return-object v5
.end method

.method public f(Lcom/google/android/exoplayer2/source/y;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/k0;->clipDurations:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Lcom/google/android/exoplayer2/source/d;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->clippedMediaPeriods:Lcom/google/common/collect/m0;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/common/collect/m0;->a()Ljava/util/Collection;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/google/android/exoplayer2/source/d;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->clippedMediaPeriods:Lcom/google/common/collect/m0;

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v2, v1}, Lcom/google/common/collect/m0;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/d;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 56
    .line 57
    :cond_2
    check-cast p1, Lcom/google/android/exoplayer2/source/j0;

    .line 58
    const/4 v0, 0x0

    .line 59
    .line 60
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/k0;->mediaSources:[Lcom/google/android/exoplayer2/source/b0;

    .line 61
    array-length v2, v1

    .line 62
    .line 63
    if-ge v0, v2, :cond_3

    .line 64
    .line 65
    aget-object v1, v1, v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/j0;->a(I)Lcom/google/android/exoplayer2/source/y;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/b0;->f(Lcom/google/android/exoplayer2/source/y;)V

    .line 73
    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-void
.end method

.method public j()Lcom/google/android/exoplayer2/i2;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->mediaSources:[Lcom/google/android/exoplayer2/source/b0;

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->j()Lcom/google/android/exoplayer2/i2;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/source/k0;->EMPTY_MEDIA_ITEM:Lcom/google/android/exoplayer2/i2;

    .line 16
    :goto_0
    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->mergeError:Lcom/google/android/exoplayer2/source/k0$b;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/g;->maybeThrowSourceInfoRefreshError()V

    .line 8
    return-void

    .line 9
    :cond_0
    throw v0
.end method

.method protected w(Lcom/google/android/exoplayer2/upstream/m0;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/upstream/m0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/g;->w(Lcom/google/android/exoplayer2/upstream/m0;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->mediaSources:[Lcom/google/android/exoplayer2/source/b0;

    .line 7
    array-length v0, v0

    .line 8
    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/k0;->mediaSources:[Lcom/google/android/exoplayer2/source/b0;

    .line 16
    .line 17
    aget-object v1, v1, p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/g;->F(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0;)V

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method protected y()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/g;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    const/4 v0, -0x1

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/source/k0;->periodCount:I

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/k0;->mergeError:Lcom/google/android/exoplayer2/source/k0$b;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->pendingTimelineSources:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0;->pendingTimelineSources:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/k0;->mediaSources:[Lcom/google/android/exoplayer2/source/b0;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 27
    return-void
.end method
