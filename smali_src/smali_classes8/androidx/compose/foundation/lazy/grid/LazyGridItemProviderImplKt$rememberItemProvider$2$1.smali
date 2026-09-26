.class final Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$rememberItemProvider$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt;->d(Landroidx/compose/foundation/lazy/grid/LazyGridState;Le8/l;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $latestContent:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/l<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $nearestItemsRangeState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lj8/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lw7/l0;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Lj8/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$rememberItemProvider$2$1;->$latestContent:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$rememberItemProvider$2$1;->$nearestItemsRangeState:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$rememberItemProvider$2$1;->$latestContent:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Le8/l;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->b()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridScopeImpl;->a()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$rememberItemProvider$2$1;->$nearestItemsRangeState:Landroidx/compose/runtime/MutableState;

    .line 29
    .line 30
    .line 31
    invoke-interface {v3}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    check-cast v3, Lj8/i;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;-><init>(Landroidx/compose/foundation/lazy/layout/IntervalList;ZLj8/i;)V

    .line 38
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt$rememberItemProvider$2$1;->b()Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
