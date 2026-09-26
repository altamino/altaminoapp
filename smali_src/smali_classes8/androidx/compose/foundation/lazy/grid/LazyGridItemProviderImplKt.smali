.class public final Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridItemProviderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridItemProviderImpl.kt\nandroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 5 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,188:1\n36#2:189\n36#2:207\n1057#3,3:190\n1060#3,3:204\n1057#3,6:208\n479#4,4:193\n484#4:202\n483#4:203\n122#5,5:197\n*S KotlinDebug\n*F\n+ 1 LazyGridItemProviderImpl.kt\nandroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt\n*L\n41#1:189\n56#1:207\n41#1:190,3\n41#1:204,3\n56#1:208,6\n43#1:193,4\n43#1:202\n43#1:203\n43#1:197,5\n*E\n"
.end annotation


# static fields
.field private static final ExtraItemsNearTheSlidingWindow:I = 0xc8

.field private static final VisibleItemsSlidingWindowSize:I = 0x5a


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic a(I)Lj8/i;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt;->b(I)Lj8/i;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(I)Lj8/i;
    .locals 4

    .line 1
    .line 2
    sget v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt;->VisibleItemsSlidingWindowSize:I

    .line 3
    div-int/2addr p0, v0

    .line 4
    mul-int/2addr p0, v0

    .line 5
    .line 6
    sget v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt;->ExtraItemsNearTheSlidingWindow:I

    .line 7
    .line 8
    sub-int v2, p0, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 13
    move-result v2

    .line 14
    add-int/2addr p0, v0

    .line 15
    add-int/2addr p0, v1

    .line 16
    .line 17
    .line 18
    invoke-static {v2, p0}, Lj8/m;->v(II)Lj8/i;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final c(Lj8/i;Landroidx/compose/foundation/lazy/layout/IntervalList;)Ljava/util/Map;
    .locals 3
    .param p0    # Lj8/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/layout/IntervalList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj8/i;",
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "range"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "list"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lj8/g;->e()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-ltz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lj8/g;->f()I

    .line 20
    move-result p0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList;->getSize()I

    .line 24
    move-result v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result p0

    .line 31
    .line 32
    if-ge p0, v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$generateKeyToIndexMap$1$1;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v0, p0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$generateKeyToIndexMap$1$1;-><init>(IILjava/util/HashMap;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0, p0, v2}, Landroidx/compose/foundation/lazy/layout/IntervalList;->a(IILe8/l;)V

    .line 51
    move-object p0, v1

    .line 52
    :goto_0
    return-object p0

    .line 53
    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p1, "Check failed."

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0
.end method

.method public static final d(Landroidx/compose/foundation/lazy/grid/LazyGridState;Le8/l;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
    .locals 4
    .param p0    # Landroidx/compose/foundation/lazy/grid/LazyGridState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "state"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x70fac3b5

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    .line 18
    shr-int/lit8 p3, p3, 0x3

    .line 19
    .line 20
    and-int/lit8 p3, p3, 0xe

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    const p3, 0x44faf204

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    if-ne v1, v0, :cond_1

    .line 50
    .line 51
    :cond_0
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->k()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 59
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->j()I

    .line 63
    move-result v3

    .line 64
    .line 65
    .line 66
    invoke-static {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt;->b(I)Lj8/i;

    .line 67
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .line 69
    .line 70
    :try_start_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 74
    const/4 v0, 0x2

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v2, v0, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 85
    .line 86
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 87
    .line 88
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$rememberItemProvider$1;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$rememberItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V

    .line 92
    const/4 p0, 0x0

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v0, p2, p0}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 102
    move-result p0

    .line 103
    .line 104
    .line 105
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 106
    move-result-object p3

    .line 107
    .line 108
    if-nez p0, :cond_2

    .line 109
    .line 110
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 114
    move-result-object p0

    .line 115
    .line 116
    if-ne p3, p0, :cond_3

    .line 117
    .line 118
    :cond_2
    new-instance p3, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 119
    .line 120
    new-instance p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$rememberItemProvider$2$1;

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, p1, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$rememberItemProvider$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->c(Le8/a;)Landroidx/compose/runtime/State;

    .line 127
    move-result-object p0

    .line 128
    .line 129
    .line 130
    invoke-direct {p3, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;-><init>(Landroidx/compose/runtime/State;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 137
    .line 138
    check-cast p3, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 139
    .line 140
    .line 141
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 142
    return-object p3

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_0

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    .line 147
    .line 148
    :try_start_3
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 149
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    .line 151
    .line 152
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 153
    throw p0
.end method
