.class public final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$FakeMediaSource;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_ADD:I = 0x0

.field private static final MSG_MOVE:I = 0x2

.field private static final MSG_ON_COMPLETION:I = 0x5

.field private static final MSG_REMOVE:I = 0x1

.field private static final MSG_SET_SHUFFLE_ORDER:I = 0x3

.field private static final MSG_UPDATE_TIMELINE:I = 0x4

.field private static final PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;


# instance fields
.field private final enabledMediaSourceHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final isAtomic:Z

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media3/exoplayer/source/MediaPeriod;",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourcesPublic:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private nextTimelineUpdateOnCompletionActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingOnCompletionActions:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private playbackThreadHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

.field private timelineUpdateScheduled:Z

.field private final useLazyPreparation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 6
    .line 7
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->j(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    .line 18
    return-void
.end method

.method public varargs constructor <init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>(ZZLandroidx/media3/exoplayer/source/ShuffleOrder;[Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public varargs constructor <init>(ZZLandroidx/media3/exoplayer/source/ShuffleOrder;[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    .line 5
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 6
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 8
    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 9
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 10
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 12
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 13
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    .line 14
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->isAtomic:Z

    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    .line 15
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->B0(Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 2

    .line 2
    new-instance v0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;[Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>(Z[Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method private A0(ILandroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .locals 2

    .line 1
    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 5
    .line 6
    add-int/lit8 v1, p1, -0x1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->H0()Landroidx/media3/common/Timeline;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget v0, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->t()I

    .line 24
    move-result v1

    .line 25
    add-int/2addr v0, v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->a(II)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->a(II)V

    .line 34
    .line 35
    :goto_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->H0()Landroidx/media3/common/Timeline;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->t()I

    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x1

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1, v1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->E0(III)V

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 53
    .line 54
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 55
    .line 56
    iget-object v0, p2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    iget-object p1, p2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p2, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->s0(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->g0()Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 76
    move-result p1

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_1

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->l0(Ljava/lang/Object;)V

    .line 88
    :goto_1
    return-void
.end method

.method private C0(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 17
    .line 18
    add-int/lit8 v1, p1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->A0(ILandroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private D0(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    .line 9
    :goto_0
    if-nez p4, :cond_1

    .line 10
    move v3, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    move v3, v1

    .line 13
    .line 14
    :goto_1
    if-ne v2, v3, :cond_2

    .line 15
    goto :goto_2

    .line 16
    :cond_2
    move v0, v1

    .line 17
    .line 18
    .line 19
    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    check-cast v3, Landroidx/media3/exoplayer/source/MediaSource;

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    goto :goto_3

    .line 42
    .line 43
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 47
    move-result v3

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v4

    .line 59
    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    check-cast v4, Landroidx/media3/exoplayer/source/MediaSource;

    .line 67
    .line 68
    new-instance v5, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 69
    .line 70
    iget-boolean v6, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    .line 71
    .line 72
    .line 73
    invoke-direct {v5, v4, v6}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_4

    .line 78
    .line 79
    :cond_4
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 80
    .line 81
    .line 82
    invoke-interface {v3, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    move-result p2

    .line 89
    .line 90
    if-nez p2, :cond_5

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p3, p4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->F0(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    new-instance p3, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    .line 97
    .line 98
    .line 99
    invoke-direct {p3, p1, v2, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 107
    goto :goto_5

    .line 108
    .line 109
    :cond_5
    if-eqz p4, :cond_6

    .line 110
    .line 111
    if-eqz p3, :cond_6

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_6
    :goto_5
    return-void
.end method

.method private E0(III)V
    .locals 2

    .line 1
    .line 2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

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
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 17
    .line 18
    iget v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 19
    add-int/2addr v1, p2

    .line 20
    .line 21
    iput v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 22
    .line 23
    iget v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 24
    add-int/2addr v1, p3

    .line 25
    .line 26
    iput v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private F0(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    return-object v0

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method private G0()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

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
    check-cast v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

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
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->l0(Ljava/lang/Object;)V

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

.method private declared-synchronized H0(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;->a()V

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    throw p1
.end method

.method private I0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->m0(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method private static J0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->z(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static L0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->A(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static M0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private N0()Landroid/os/Handler;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/os/Handler;

    .line 9
    return-object v0
.end method

.method private Q0(Landroid/os/Message;)Z
    .locals 4

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    const/4 v2, 0x2

    .line 9
    .line 10
    if-eq v0, v2, :cond_3

    .line 11
    const/4 v2, 0x3

    .line 12
    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    const/4 v2, 0x4

    .line 15
    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    const/4 v2, 0x5

    .line 18
    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->H0(Ljava/util/Set;)V

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 38
    throw p1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->a1()V

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    .line 52
    .line 53
    iget-object v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 56
    .line 57
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 58
    .line 59
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->Y0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 75
    .line 76
    iget v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->index:I

    .line 77
    .line 78
    add-int/lit8 v3, v2, 0x1

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->a(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 85
    .line 86
    iget-object v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v2

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v2, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 99
    .line 100
    iget v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->index:I

    .line 101
    .line 102
    iget-object v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v2, Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 108
    move-result v2

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->S0(II)V

    .line 112
    .line 113
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->Y0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 117
    goto :goto_2

    .line 118
    .line 119
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    .line 126
    .line 127
    iget v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->index:I

    .line 128
    .line 129
    iget-object v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v2, Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 135
    move-result v2

    .line 136
    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 140
    .line 141
    .line 142
    invoke-interface {v3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    .line 143
    move-result v3

    .line 144
    .line 145
    if-ne v2, v3, :cond_5

    .line 146
    .line 147
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 148
    .line 149
    .line 150
    invoke-interface {v3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 151
    move-result-object v3

    .line 152
    .line 153
    iput-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 154
    goto :goto_0

    .line 155
    .line 156
    :cond_5
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 157
    .line 158
    .line 159
    invoke-interface {v3, v0, v2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->a(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 160
    move-result-object v3

    .line 161
    .line 162
    iput-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 163
    :goto_0
    sub-int/2addr v2, v1

    .line 164
    .line 165
    :goto_1
    if-lt v2, v0, :cond_6

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->U0(I)V

    .line 169
    .line 170
    add-int/lit8 v2, v2, -0x1

    .line 171
    goto :goto_1

    .line 172
    .line 173
    :cond_6
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->Y0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 177
    goto :goto_2

    .line 178
    .line 179
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    invoke-static {p1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    .line 186
    .line 187
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 188
    .line 189
    iget v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->index:I

    .line 190
    .line 191
    iget-object v3, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v3, Ljava/util/Collection;

    .line 194
    .line 195
    .line 196
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 197
    move-result v3

    .line 198
    .line 199
    .line 200
    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 204
    .line 205
    iget v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->index:I

    .line 206
    .line 207
    iget-object v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v2, Ljava/util/Collection;

    .line 210
    .line 211
    .line 212
    invoke-direct {p0, v0, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->C0(ILjava/util/Collection;)V

    .line 213
    .line 214
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 215
    .line 216
    .line 217
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->Y0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 218
    :goto_2
    return v1
.end method

.method private R0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

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
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->t0(Ljava/lang/Object;)V

    .line 21
    :cond_0
    return-void
.end method

.method private S0(II)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    check-cast v2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 17
    .line 18
    iget v2, v2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 27
    .line 28
    .line 29
    invoke-interface {v3, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30
    .line 31
    :goto_0
    if-gt v0, v1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 40
    .line 41
    iput v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 42
    .line 43
    iput v2, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 44
    .line 45
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->H0()Landroidx/media3/common/Timeline;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->t()I

    .line 53
    move-result p1

    .line 54
    add-int/2addr v2, p1

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method private U0(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->H0()Landroidx/media3/common/Timeline;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->t()I

    .line 25
    move-result v1

    .line 26
    neg-int v1, v1

    .line 27
    const/4 v2, -0x1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, v2, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->E0(III)V

    .line 31
    const/4 p1, 0x1

    .line 32
    .line 33
    iput-boolean p1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->R0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 37
    return-void
.end method

.method private W0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    .line 9
    :goto_0
    if-nez p4, :cond_1

    .line 10
    move v3, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    move v3, v0

    .line 13
    .line 14
    :goto_1
    if-ne v2, v3, :cond_2

    .line 15
    move v0, v1

    .line 16
    .line 17
    .line 18
    :cond_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-static {v2, p1, p2}, Landroidx/media3/common/util/Util;->V0(Ljava/util/List;II)V

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p3, p4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->F0(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    new-instance p4, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-direct {p4, p1, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_3
    if-eqz p4, :cond_4

    .line 51
    .line 52
    if-eqz p3, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    :cond_4
    :goto_2
    return-void
.end method

.method private X0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->Y0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 5
    return-void
.end method

.method private Y0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;)V
    .locals 2
    .param p1    # Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$HandlerAndRunnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->N0()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    .line 20
    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1
    return-void
.end method

.method private Z0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/common/Timeline;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 15
    .line 16
    iget v1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->t()I

    .line 28
    move-result p2

    .line 29
    .line 30
    iget v0, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 31
    .line 32
    iget v1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 33
    sub-int/2addr v0, v1

    .line 34
    sub-int/2addr p2, v0

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    iget p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->E0(III)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->X0()V

    .line 48
    return-void
.end method

.method private a1()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 13
    .line 14
    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 19
    .line 20
    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->isAtomic:Z

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2, v3, v4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->i0(Landroidx/media3/common/Timeline;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->N0()Landroid/os/Handler;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    return-void
.end method

.method public static synthetic u0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->Q0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static synthetic v0()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    return-object v0
.end method


# virtual methods
.method public A(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 15
    .line 16
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->A(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 22
    .line 23
    check-cast p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

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
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->G0()V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->R0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 43
    return-void
.end method

.method public declared-synchronized B0(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, p1, v1, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->D0(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method protected K0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

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
    iget-object v1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 18
    .line 19
    iget-wide v1, v1, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 20
    .line 21
    iget-wide v3, p2, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 22
    .line 23
    cmp-long v1, v1, v3

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->M0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method public M(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->L0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->J0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 29
    .line 30
    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$FakeMediaSource;

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$FakeMediaSource;-><init>(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$1;)V

    .line 35
    .line 36
    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    .line 40
    const/4 v1, 0x1

    .line 41
    .line 42
    iput-boolean v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 43
    .line 44
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->s0(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->I0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    .line 51
    .line 52
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->E0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iget-object p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->G0()V

    .line 70
    return-object p1
.end method

.method public declared-synchronized O0()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method protected P0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;I)I
    .locals 0

    .line 1
    .line 2
    iget p1, p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 3
    add-int/2addr p2, p1

    .line 4
    return p2
.end method

.method protected T0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->Z0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/common/Timeline;)V

    .line 4
    return-void
.end method

.method public declared-synchronized V0(II)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->W0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method protected d0()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->d0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 9
    return-void
.end method

.method protected e0()V
    .locals 0

    .line 1
    return-void
.end method

.method protected declared-synchronized h0(Landroidx/media3/datasource/TransferListener;)V
    .locals 2
    .param p1    # Landroidx/media3/datasource/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->h0(Landroidx/media3/datasource/TransferListener;)V

    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v0, Landroidx/media3/exoplayer/source/b;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/b;-><init>(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->a1()V

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v1, v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v1, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->C0(ILjava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->X0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit p0

    .line 57
    throw p1
.end method

.method public j()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method protected declared-synchronized j0()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->j0()V

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 36
    .line 37
    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 42
    .line 43
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->H0(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit p0

    .line 57
    throw v0
.end method

.method protected bridge synthetic n0(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->K0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public declared-synchronized o()Landroidx/media3/common/Timeline;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    .line 7
    move-result v0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v2, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 38
    .line 39
    :goto_0
    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 42
    .line 43
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->isAtomic:Z

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2, v0, v3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    .line 48
    return-object v1

    .line 49
    :goto_1
    monitor-exit p0

    .line 50
    throw v0
.end method

.method protected bridge synthetic p0(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->P0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public r()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic r0(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->T0(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    .line 6
    return-void
.end method

.method public declared-synchronized w0(ILandroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 5
    move-result-object p2

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->D0(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized x0(ILandroidx/media3/exoplayer/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 5
    move-result-object p2

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->D0(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method

.method public declared-synchronized y0(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->w0(ILandroidx/media3/exoplayer/source/MediaSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized z0(Landroidx/media3/exoplayer/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->x0(ILandroidx/media3/exoplayer/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method
