.class public final Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridScrolling.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridScrolling.kt\nandroidx/compose/foundation/lazy/grid/LazyGridScrollingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,299:1\n1#2:300\n93#3,2:301\n32#3,6:303\n95#3:309\n155#4:310\n155#4:311\n*S KotlinDebug\n*F\n+ 1 LazyGridScrolling.kt\nandroidx/compose/foundation/lazy/grid/LazyGridScrollingKt\n*L\n53#1:301,2\n53#1:303,6\n53#1:309\n36#1:310\n37#1:311\n*E\n"
.end annotation


# static fields
.field private static final BoundDistance:F

.field private static final DEBUG:Z

.field private static final TargetDistance:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x9c4

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 7
    move-result v0

    .line 8
    .line 9
    sput v0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->TargetDistance:F

    .line 10
    .line 11
    const/16 v0, 0x5dc

    .line 12
    int-to-float v0, v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 16
    move-result v0

    .line 17
    .line 18
    sput v0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->BoundDistance:F

    .line 19
    return-void
.end method

.method public static final synthetic a(Ljava/util/List;Z)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->e(Ljava/util/List;Z)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Landroidx/compose/foundation/lazy/grid/LazyGridState;I)Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->f(Landroidx/compose/foundation/lazy/grid/LazyGridState;I)Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->BoundDistance:F

    return v0
.end method

.method public static final synthetic d()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->TargetDistance:F

    return v0
.end method

.method private static final e(Ljava/util/List;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$calculateLineAverageMainAxisSize$lineOf$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$calculateLineAverageMainAxisSize$lineOf$1;-><init>(ZLjava/util/List;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    move-result v5

    .line 14
    .line 15
    if-ge v2, v5, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v5}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    check-cast v5, Ljava/lang/Number;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 29
    move-result v5

    .line 30
    const/4 v6, -0x1

    .line 31
    .line 32
    if-ne v5, v6, :cond_0

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v6, v1

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 40
    move-result v7

    .line 41
    .line 42
    if-ge v2, v7, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v7

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v7}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v7

    .line 51
    .line 52
    check-cast v7, Ljava/lang/Number;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 56
    move-result v7

    .line 57
    .line 58
    if-ne v7, v5, :cond_2

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 67
    .line 68
    .line 69
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->a()J

    .line 70
    move-result-wide v7

    .line 71
    .line 72
    .line 73
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 74
    move-result v7

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v7

    .line 80
    .line 81
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 82
    .line 83
    .line 84
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->a()J

    .line 85
    move-result-wide v7

    .line 86
    .line 87
    .line 88
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 89
    move-result v7

    .line 90
    .line 91
    .line 92
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 93
    move-result v6

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    add-int/2addr v3, v6

    .line 98
    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    div-int/2addr v3, v4

    .line 102
    return v3
.end method

.method private static final f(Landroidx/compose/foundation/lazy/grid/LazyGridState;I)Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->m()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->b()Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    move-object v3, v2

    .line 21
    .line 22
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 23
    .line 24
    .line 25
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-ne v3, p1, :cond_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    .line 35
    :goto_1
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 36
    return-object v2
.end method
