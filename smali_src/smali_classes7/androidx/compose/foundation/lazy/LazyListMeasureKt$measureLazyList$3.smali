.class final Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListMeasureKt;->c(ILandroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Le8/q;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,406:1\n32#2,6:407\n*S KotlinDebug\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3\n*L\n301#1:407,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $headerItem:Landroidx/compose/foundation/lazy/LazyListPositionedItem;

.field final synthetic $positionedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListPositionedItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->$positionedItems:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->$headerItem:Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$invoke"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->$positionedItems:Ljava/util/List;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->$headerItem:Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v3, v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 23
    .line 24
    if-eq v4, v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, p1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->$headerItem:Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 38
    :cond_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
