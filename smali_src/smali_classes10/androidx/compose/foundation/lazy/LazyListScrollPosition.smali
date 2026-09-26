.class public final Landroidx/compose/foundation/lazy/LazyListScrollPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListScrollPosition$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListScrollPosition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListScrollPosition.kt\nandroidx/compose/foundation/lazy/LazyListScrollPosition\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 5 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,136:1\n76#2:137\n102#2,2:138\n76#2:140\n102#2,2:141\n1#3:143\n479#4,4:144\n484#4:153\n483#4:154\n479#4,4:155\n484#4:164\n483#4:165\n122#5,5:148\n122#5,5:159\n*S KotlinDebug\n*F\n+ 1 LazyListScrollPosition.kt\nandroidx/compose/foundation/lazy/LazyListScrollPosition\n*L\n33#1:137\n33#1:138,2\n35#1:140\n35#1:141,2\n56#1:144,4\n56#1:153\n56#1:154\n91#1:155,4\n91#1:164\n91#1:165\n56#1:148,5\n91#1:159,5\n*E\n"
.end annotation


# static fields
.field private static final Companion:Landroidx/compose/foundation/lazy/LazyListScrollPosition$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private hadFirstNotEmptyLayout:Z

.field private final index$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastKnownFirstItemKey:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scrollOffset$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/LazyListScrollPosition$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->Companion:Landroidx/compose/foundation/lazy/LazyListScrollPosition$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;-><init>(IIILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result p1

    invoke-static {p1}, Landroidx/compose/foundation/lazy/DataIndex;->a(I)Landroidx/compose/foundation/lazy/DataIndex;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/MutableState;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/k;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;-><init>(II)V

    return-void
.end method

.method private final e(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method private final f(II)V
    .locals 2

    .line 1
    int-to-float v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-ltz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->a()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/compose/foundation/lazy/DataIndex;->d(II)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->d(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->b()I

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eq p2, p1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p2}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->e(I)V

    .line 29
    :cond_1
    return-void

    .line 30
    .line 31
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v0, "Index should be non-negative ("

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const/16 p1, 0x29

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/lazy/DataIndex;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/DataIndex;->g()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final c(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->f(II)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/compose/foundation/lazy/DataIndex;->a(I)Landroidx/compose/foundation/lazy/DataIndex;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public final g(Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 3
    .param p1    # Landroidx/compose/foundation/lazy/LazyListMeasureResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "measureResult"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->g()Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->c()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    .line 20
    .line 21
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->hadFirstNotEmptyLayout:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->a()I

    .line 27
    move-result v0

    .line 28
    .line 29
    if-lez v0, :cond_3

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->hadFirstNotEmptyLayout:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->h()I

    .line 36
    move-result v0

    .line 37
    int-to-float v1, v0

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    cmpl-float v1, v1, v2

    .line 41
    .line 42
    if-ltz v1, :cond_4

    .line 43
    .line 44
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->k()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 52
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    .line 54
    .line 55
    :try_start_1
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->g()Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->b()I

    .line 62
    move-result p1

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const/4 p1, 0x0

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-static {p1}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    .line 70
    move-result p1

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->f(II)V

    .line 74
    .line 75
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    :try_start_2
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 82
    :cond_3
    return-void

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    goto :goto_3

    .line 85
    .line 86
    .line 87
    :goto_2
    :try_start_3
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 88
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .line 90
    .line 91
    :goto_3
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 92
    throw p1

    .line 93
    .line 94
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    const-string v1, "scrollOffset should be non-negative ("

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const/16 v0, 0x29

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    throw v0
.end method

.method public final h(Landroidx/compose/foundation/lazy/LazyListItemProvider;)V
    .locals 5
    .param p1    # Landroidx/compose/foundation/lazy/LazyListItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemProvider"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->k()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 15
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    :try_start_1
    sget-object v2, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->Companion:Landroidx/compose/foundation/lazy/LazyListScrollPosition$Companion;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->a()I

    .line 23
    move-result v4

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3, v4, p1}, Landroidx/compose/foundation/lazy/LazyListScrollPosition$Companion;->a(Landroidx/compose/foundation/lazy/LazyListScrollPosition$Companion;Ljava/lang/Object;ILandroidx/compose/foundation/lazy/LazyListItemProvider;)I

    .line 27
    move-result p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->b()I

    .line 31
    move-result v2

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, v2}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->f(II)V

    .line 35
    .line 36
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    :try_start_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception p1

    .line 47
    .line 48
    .line 49
    :try_start_3
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 50
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 54
    throw p1
.end method
