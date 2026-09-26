.class final Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazySemanticsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/o0;ZZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $coroutineScope:Lkotlinx/coroutines/o0;

.field final synthetic $isVertical:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method constructor <init>(ZLkotlinx/coroutines/o0;Landroidx/compose/foundation/lazy/grid/LazyGridState;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$coroutineScope:Lkotlinx/coroutines/o0;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(FF)Ljava/lang/Boolean;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$isVertical:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move p1, p2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$coroutineScope:Lkotlinx/coroutines/o0;

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1$1;

    .line 12
    .line 13
    iget-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, p2, p1, v4}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;FLkotlin/coroutines/d;)V

    .line 18
    const/4 v4, 0x3

    .line 19
    const/4 v5, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 23
    .line 24
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 6
    move-result p1

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;->a(FF)Ljava/lang/Boolean;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
