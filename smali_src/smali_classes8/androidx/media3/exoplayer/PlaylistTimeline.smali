.class final Landroidx/media3/exoplayer/PlaylistTimeline;
.super Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
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

.field private final timelines:[Landroidx/media3/common/Timeline;

.field private final uids:[Ljava/lang/Object;

.field private final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/media3/exoplayer/MediaSourceInfoHolder;",
            ">;",
            "Landroidx/media3/exoplayer/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/media3/exoplayer/PlaylistTimeline;->K(Ljava/util/Collection;)[Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/exoplayer/PlaylistTimeline;->L(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    return-void
.end method

.method private constructor <init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 7

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;-><init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 3
    array-length p3, p1

    iput-object p1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 4
    new-array v1, p3, [I

    iput-object v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    .line 5
    new-array p3, p3, [I

    iput-object p3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    iput-object p2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    .line 6
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 7
    array-length p3, p1

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v4, p1, v0

    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 8
    aput-object v4, v5, v3

    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    .line 9
    aput v1, v5, v3

    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    .line 10
    aput v2, v5, v3

    .line 11
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->t()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 12
    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->m()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 13
    aget-object v5, p2, v3

    add-int/lit8 v6, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->windowCount:I

    iput v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->periodCount:I

    return-void
.end method

.method private static K(Ljava/util/Collection;)[Landroidx/media3/common/Timeline;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/media3/exoplayer/MediaSourceInfoHolder;",
            ">;)[",
            "Landroidx/media3/common/Timeline;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-array v0, v0, [Landroidx/media3/common/Timeline;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Landroidx/media3/exoplayer/MediaSourceInfoHolder;

    .line 24
    .line 25
    add-int/lit8 v3, v1, 0x1

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Landroidx/media3/exoplayer/MediaSourceInfoHolder;->b()Landroidx/media3/common/Timeline;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    aput-object v2, v0, v1

    .line 32
    move v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method private static L(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/media3/exoplayer/MediaSourceInfoHolder;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Landroidx/media3/exoplayer/MediaSourceInfoHolder;

    .line 24
    .line 25
    add-int/lit8 v3, v1, 0x1

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Landroidx/media3/exoplayer/MediaSourceInfoHolder;->a()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    aput-object v2, v0, v1

    .line 32
    move v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected B(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method protected D(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method protected E(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    .line 3
    .line 4
    aget p1, v0, p1

    .line 5
    return p1
.end method

.method protected H(I)Landroidx/media3/common/Timeline;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public I(Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/exoplayer/PlaylistTimeline;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    new-array v0, v0, [Landroidx/media3/common/Timeline;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 9
    array-length v3, v2

    .line 10
    .line 11
    if-ge v1, v3, :cond_0

    .line 12
    .line 13
    new-instance v3, Landroidx/media3/exoplayer/PlaylistTimeline$1;

    .line 14
    .line 15
    aget-object v2, v2, v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/PlaylistTimeline$1;-><init>(Landroidx/media3/exoplayer/PlaylistTimeline;Landroidx/media3/common/Timeline;)V

    .line 19
    .line 20
    aput-object v3, v0, v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v0, v2, p1}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 31
    return-object v1
.end method

.method J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/Timeline;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

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
    iget v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->periodCount:I

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->windowCount:I

    return v0
.end method

.method protected w(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

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

.method protected x(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, v1, v1}, Landroidx/media3/common/util/Util;->h([IIZZ)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method protected y(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    .line 3
    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, v1, v1}, Landroidx/media3/common/util/Util;->h([IIZZ)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method
