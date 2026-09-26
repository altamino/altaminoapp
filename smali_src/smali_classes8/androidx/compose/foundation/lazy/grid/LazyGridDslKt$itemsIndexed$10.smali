.class public final Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/r<",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridDsl.kt\nandroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10\n*L\n1#1,493:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $itemContent:Le8/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/s<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/s;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/s<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;->$itemContent:Le8/s;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;->$items:[Ljava/lang/Object;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 7
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;
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
    const-string v0, "$this$items"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    and-int/lit8 v0, p4, 0xe

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x2

    .line 19
    :goto_0
    or-int/2addr v0, p4

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v0, p4

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p4, p4, 0x70

    .line 24
    .line 25
    if-nez p4, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 29
    move-result p4

    .line 30
    .line 31
    if-eqz p4, :cond_2

    .line 32
    .line 33
    const/16 p4, 0x20

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :cond_2
    const/16 p4, 0x10

    .line 37
    :goto_2
    or-int/2addr v0, p4

    .line 38
    .line 39
    :cond_3
    and-int/lit16 p4, v0, 0x2db

    .line 40
    .line 41
    const/16 v1, 0x92

    .line 42
    .line 43
    if-ne p4, v1, :cond_5

    .line 44
    .line 45
    .line 46
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->b()Z

    .line 47
    move-result p4

    .line 48
    .line 49
    if-nez p4, :cond_4

    .line 50
    goto :goto_3

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->g()V

    .line 54
    goto :goto_4

    .line 55
    .line 56
    :cond_5
    :goto_3
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;->$itemContent:Le8/s;

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    iget-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;->$items:[Ljava/lang/Object;

    .line 63
    .line 64
    aget-object v4, p4, p2

    .line 65
    .line 66
    and-int/lit8 p2, v0, 0xe

    .line 67
    .line 68
    and-int/lit8 p4, v0, 0x70

    .line 69
    or-int/2addr p2, p4

    .line 70
    .line 71
    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v6

    .line 74
    move-object v2, p1

    .line 75
    move-object v5, p3

    .line 76
    .line 77
    .line 78
    invoke-interface/range {v1 .. v6}, Le8/s;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_4
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

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
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 11
    .line 12
    check-cast p4, Ljava/lang/Number;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 16
    move-result p4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;->a(Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;ILandroidx/compose/runtime/Composer;I)V

    .line 20
    .line 21
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 22
    return-object p1
.end method
