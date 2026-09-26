.class public final Landroidx/compose/foundation/lazy/layout/IntervalListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntervalList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntervalList.kt\nandroidx/compose/foundation/lazy/layout/IntervalListKt\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,216:1\n48#2:217\n523#2:218\n523#2:219\n*S KotlinDebug\n*F\n+ 1 IntervalList.kt\nandroidx/compose/foundation/lazy/layout/IntervalListKt\n*L\n192#1:217\n197#1:218\n206#1:219\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/runtime/collection/MutableVector;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/layout/IntervalListKt;->b(Landroidx/compose/runtime/collection/MutableVector;I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final b(Landroidx/compose/runtime/collection/MutableVector;I)I
    .locals 4
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "TT;>;>;I)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    .line 10
    .line 11
    sub-int v2, v0, v1

    .line 12
    .line 13
    div-int/lit8 v2, v2, 0x2

    .line 14
    add-int/2addr v2, v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    aget-object v3, v3, v2

    .line 21
    .line 22
    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b()I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-ne v3, p1, :cond_1

    .line 29
    return v2

    .line 30
    .line 31
    :cond_1
    if-ge v3, p1, :cond_2

    .line 32
    .line 33
    add-int/lit8 v1, v2, 0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    aget-object v3, v3, v1

    .line 40
    .line 41
    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b()I

    .line 45
    move-result v3

    .line 46
    .line 47
    if-ge p1, v3, :cond_0

    .line 48
    return v2

    .line 49
    .line 50
    :cond_2
    add-int/lit8 v0, v2, -0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return v1
.end method
