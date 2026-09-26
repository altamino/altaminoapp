.class final Lcom/google/android/exoplayer2/i3;
.super Lcom/google/android/exoplayer2/a;
.source "SourceFile"


# instance fields
.field private final childIndexByUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final firstPeriodInChildIndices:[I

.field private final firstWindowInChildIndices:[I

.field private final periodCount:I

.field private final timelines:[Lcom/google/android/exoplayer2/z3;

.field private final uids:[Ljava/lang/Object;

.field private final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/y0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/exoplayer2/s2;",
            ">;",
            "Lcom/google/android/exoplayer2/source/y0;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/a;-><init>(ZLcom/google/android/exoplayer2/source/y0;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 8
    move-result p2

    .line 9
    .line 10
    new-array v1, p2, [I

    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/exoplayer2/i3;->firstPeriodInChildIndices:[I

    .line 13
    .line 14
    new-array v1, p2, [I

    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/android/exoplayer2/i3;->firstWindowInChildIndices:[I

    .line 17
    .line 18
    new-array v1, p2, [Lcom/google/android/exoplayer2/z3;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/google/android/exoplayer2/i3;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 21
    .line 22
    new-array p2, p2, [Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/android/exoplayer2/i3;->uids:[Ljava/lang/Object;

    .line 25
    .line 26
    new-instance p2, Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    iput-object p2, p0, Lcom/google/android/exoplayer2/i3;->childIndexByUid:Ljava/util/HashMap;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p1

    .line 36
    move p2, v0

    .line 37
    move v1, p2

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    check-cast v2, Lcom/google/android/exoplayer2/s2;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/google/android/exoplayer2/i3;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Lcom/google/android/exoplayer2/s2;->b()Lcom/google/android/exoplayer2/z3;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    aput-object v4, v3, v1

    .line 58
    .line 59
    iget-object v3, p0, Lcom/google/android/exoplayer2/i3;->firstWindowInChildIndices:[I

    .line 60
    .line 61
    aput v0, v3, v1

    .line 62
    .line 63
    iget-object v3, p0, Lcom/google/android/exoplayer2/i3;->firstPeriodInChildIndices:[I

    .line 64
    .line 65
    aput p2, v3, v1

    .line 66
    .line 67
    iget-object v3, p0, Lcom/google/android/exoplayer2/i3;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 68
    .line 69
    aget-object v3, v3, v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 73
    move-result v3

    .line 74
    add-int/2addr v0, v3

    .line 75
    .line 76
    iget-object v3, p0, Lcom/google/android/exoplayer2/i3;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 77
    .line 78
    aget-object v3, v3, v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/z3;->m()I

    .line 82
    move-result v3

    .line 83
    add-int/2addr p2, v3

    .line 84
    .line 85
    iget-object v3, p0, Lcom/google/android/exoplayer2/i3;->uids:[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-interface {v2}, Lcom/google/android/exoplayer2/s2;->a()Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    aput-object v2, v3, v1

    .line 92
    .line 93
    iget-object v2, p0, Lcom/google/android/exoplayer2/i3;->childIndexByUid:Ljava/util/HashMap;

    .line 94
    .line 95
    iget-object v3, p0, Lcom/google/android/exoplayer2/i3;->uids:[Ljava/lang/Object;

    .line 96
    .line 97
    aget-object v3, v3, v1

    .line 98
    .line 99
    add-int/lit8 v4, v1, 0x1

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move v1, v4

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/i3;->windowCount:I

    .line 111
    .line 112
    iput p2, p0, Lcom/google/android/exoplayer2/i3;->periodCount:I

    .line 113
    return-void
.end method


# virtual methods
.method protected A(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i3;->firstWindowInChildIndices:[I

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, v1, v1}, Lcom/google/android/exoplayer2/util/o0;->h([IIZZ)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method protected D(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i3;->uids:[Ljava/lang/Object;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method protected F(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i3;->firstPeriodInChildIndices:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method protected G(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i3;->firstWindowInChildIndices:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method protected J(I)Lcom/google/android/exoplayer2/z3;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i3;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/z3;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i3;->timelines:[Lcom/google/android/exoplayer2/z3;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/i3;->periodCount:I

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/i3;->windowCount:I

    return v0
.end method

.method protected y(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i3;->childIndexByUid:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, -0x1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    :goto_0
    return p1
.end method

.method protected z(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i3;->firstPeriodInChildIndices:[I

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, v1, v1}, Lcom/google/android/exoplayer2/util/o0;->h([IIZZ)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method
