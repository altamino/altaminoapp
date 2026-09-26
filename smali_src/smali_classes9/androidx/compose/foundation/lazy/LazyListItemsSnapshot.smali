.class public final Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation


# instance fields
.field private final headerIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/IntervalList<",
            "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
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


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/IntervalList;Ljava/util/List;Lj8/i;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/lazy/layout/IntervalList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
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
            "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
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
    const-string v0, "headerIndexes"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "nearestItemsRange"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->headerIndexes:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt;->c(Lj8/i;Landroidx/compose/foundation/lazy/layout/IntervalList;)Ljava/util/Map;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->keyToIndexMap:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p1    # Landroidx/compose/foundation/lazy/LazyItemScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "scope"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x72977693    # 6.000075E30f

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p2}, Landroidx/compose/foundation/lazy/layout/IntervalList;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b()I

    .line 22
    move-result v1

    .line 23
    .line 24
    sub-int v1, p2, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->c()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->a()Le8/r;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    and-int/lit8 v2, p4, 0xe

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p1, v1, p3, v2}, Le8/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 51
    move-result-object p3

    .line 52
    .line 53
    if-nez p3, :cond_0

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot$Item$1;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot$Item$1;-><init>(Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;Landroidx/compose/foundation/lazy/LazyItemScope;II)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 63
    :goto_0
    return-void
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

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
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->c()Le8/l;

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

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->headerIndexes:Ljava/util/List;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

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
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->intervals:Landroidx/compose/foundation/lazy/layout/IntervalList;

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
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->b()Le8/l;

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
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->keyToIndexMap:Ljava/util/Map;

    return-object v0
.end method
