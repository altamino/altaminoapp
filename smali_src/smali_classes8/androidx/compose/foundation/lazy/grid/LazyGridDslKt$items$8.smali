.class public final Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridDsl.kt\nandroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8\n*L\n1#1,493:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final synthetic $span:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/p;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;->$span:Le8/p;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;->$items:[Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;I)J
    .locals 2
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;->$span:Le8/p;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;->$items:[Ljava/lang/Object;

    .line 10
    .line 11
    aget-object p2, v1, p2

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->g()J

    .line 21
    move-result-wide p1

    .line 22
    return-wide p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;->a(Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;I)J

    .line 12
    move-result-wide p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->a(J)Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
