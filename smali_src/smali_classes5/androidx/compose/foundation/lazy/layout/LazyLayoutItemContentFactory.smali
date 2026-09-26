.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;
    }
.end annotation


# instance fields
.field private constraintsOfCachedLambdas:J

.field private densityOfCachedLambdas:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemProvider:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lambdasCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final saveableStateHolder:Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Le8/a;)V
    .locals 6
    .param p1    # Landroidx/compose/runtime/saveable/SaveableStateHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/SaveableStateHolder;",
            "Le8/a<",
            "+",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "saveableStateHolder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "itemProvider"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->saveableStateHolder:Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->itemProvider:Le8/a;

    .line 18
    .line 19
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->lambdasCache:Ljava/util/Map;

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/DensityKt;->a(FF)Landroidx/compose/ui/unit/Density;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->densityOfCachedLambdas:Landroidx/compose/ui/unit/Density;

    .line 32
    const/4 v0, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    const/16 v4, 0xf

    .line 38
    const/4 v5, 0x0

    .line 39
    .line 40
    .line 41
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIIILjava/lang/Object;)J

    .line 42
    move-result-wide p1

    .line 43
    .line 44
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->constraintsOfCachedLambdas:J

    .line 45
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->saveableStateHolder:Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(ILjava/lang/Object;)Le8/p;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->lambdasCache:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->itemProvider:Le8/a;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->a(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->f()I

    .line 31
    move-result v2

    .line 32
    .line 33
    if-ne v2, p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->g()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->d()Le8/p;

    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->lambdasCache:Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->d()Le8/p;

    .line 62
    move-result-object p1

    .line 63
    :goto_0
    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->lambdasCache:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->g()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->itemProvider:Le8/a;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->c()Ljava/util/Map;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result p1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->a(I)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    :goto_0
    return-object p1
.end method

.method public final d()Le8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/a<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->itemProvider:Le8/a;

    return-object v0
.end method

.method public final e(Landroidx/compose/ui/unit/Density;J)V
    .locals 2
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "density"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->densityOfCachedLambdas:Landroidx/compose/ui/unit/Density;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->constraintsOfCachedLambdas:J

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/unit/Constraints;->g(JJ)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->densityOfCachedLambdas:Landroidx/compose/ui/unit/Density;

    .line 24
    .line 25
    iput-wide p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->constraintsOfCachedLambdas:J

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->lambdasCache:Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 31
    :cond_1
    return-void
.end method
