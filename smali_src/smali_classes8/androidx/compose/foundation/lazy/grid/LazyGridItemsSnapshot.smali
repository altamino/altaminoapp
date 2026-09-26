.class public final Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation


# instance fields
.field private final hasCustomSpans:Z

.field private final intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyToIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/IntervalList;ZLj8/i;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/lazy/layout/IntervalList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lj8/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;",
            ">;Z",
            "Lj8/i;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "intervals"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "nearestItemsRange"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 16
    .line 17
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->hasCustomSpans:Z

    .line 18
    .line 19
    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;)V

    .line 23
    .line 24
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 25
    .line 26
    .line 27
    invoke-static {p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt;->c(Lj8/i;Landroidx/compose/foundation/lazy/layout/IntervalList;)Ljava/util/Map;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->keyToIndexMap:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(ILandroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, -0x18251daa

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/IntervalList;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b()I

    .line 17
    move-result v1

    .line 18
    .line 19
    sub-int v1, p1, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->c()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->a()Le8/r;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sget-object v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    const/4 v3, 0x6

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v2, v1, p2, v3}, Le8/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    if-nez p2, :cond_0

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot$Item$1;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot$Item$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;II)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 59
    :goto_0
    return-void
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/IntervalList;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b()I

    .line 10
    move-result v1

    .line 11
    sub-int/2addr p1, v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->c()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->d()Le8/l;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->hasCustomSpans:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList;->getSize()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/IntervalList;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b()I

    .line 10
    move-result v1

    .line 11
    .line 12
    sub-int v1, p1, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->c()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->b()Le8/l;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    .line 36
    :goto_0
    if-nez v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/Lazy_androidKt;->a(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    :cond_1
    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->keyToIndexMap:Ljava/util/Map;

    return-object v0
.end method

.method public final g(Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;I)J
    .locals 2
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$getSpan"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p2}, Landroidx/compose/foundation/lazy/layout/IntervalList;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b()I

    .line 15
    move-result v1

    .line 16
    sub-int/2addr p2, v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->c()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->c()Le8/p;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->g()J

    .line 40
    move-result-wide p1

    .line 41
    return-wide p1
.end method

.method public final h()Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    return-object v0
.end method
