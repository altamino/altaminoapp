.class final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;
.super Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


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
.method public constructor <init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;",
            "Landroidx/media3/exoplayer/source/ShuffleOrder;",
            "Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3, p2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;-><init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 7
    move-result p2

    .line 8
    .line 9
    new-array p3, p2, [I

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    .line 12
    .line 13
    new-array p3, p2, [I

    .line 14
    .line 15
    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    .line 16
    .line 17
    new-array p3, p2, [Landroidx/media3/common/Timeline;

    .line 18
    .line 19
    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 20
    .line 21
    new-array p2, p2, [Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    .line 24
    .line 25
    new-instance p2, Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x0

    .line 36
    move p3, p2

    .line 37
    move v0, p3

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 52
    .line 53
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->H0()Landroidx/media3/common/Timeline;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    aput-object v3, v2, v0

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    .line 62
    .line 63
    aput p2, v2, v0

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    .line 66
    .line 67
    aput p3, v2, v0

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 70
    .line 71
    aget-object v2, v2, v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->t()I

    .line 75
    move-result v2

    .line 76
    add-int/2addr p2, v2

    .line 77
    .line 78
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 79
    .line 80
    aget-object v2, v2, v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->m()I

    .line 84
    move-result v2

    .line 85
    add-int/2addr p3, v2

    .line 86
    .line 87
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    .line 88
    .line 89
    iget-object v1, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    .line 90
    .line 91
    aput-object v1, v2, v0

    .line 92
    .line 93
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 94
    .line 95
    add-int/lit8 v3, v0, 0x1

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move v0, v3

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_0
    iput p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    .line 107
    .line 108
    iput p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    .line 109
    return-void
.end method


# virtual methods
.method protected B(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

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
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

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
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

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
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    return v0
.end method

.method protected w(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

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
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

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
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

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
