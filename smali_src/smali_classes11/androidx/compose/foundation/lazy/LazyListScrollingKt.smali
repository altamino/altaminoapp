.class public final Landroidx/compose/foundation/lazy/LazyListScrollingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListScrolling.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListScrolling.kt\nandroidx/compose/foundation/lazy/LazyListScrollingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,236:1\n1#2:237\n93#3,2:238\n32#3,6:240\n95#3:246\n155#4:247\n155#4:248\n*S KotlinDebug\n*F\n+ 1 LazyListScrolling.kt\nandroidx/compose/foundation/lazy/LazyListScrollingKt\n*L\n49#1:238,2\n49#1:240,6\n49#1:246\n34#1:247\n35#1:248\n*E\n"
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
    sput v0, Landroidx/compose/foundation/lazy/LazyListScrollingKt;->TargetDistance:F

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
    sput v0, Landroidx/compose/foundation/lazy/LazyListScrollingKt;->BoundDistance:F

    .line 19
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/lazy/LazyListState;I)Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/LazyListScrollingKt;->d(Landroidx/compose/foundation/lazy/LazyListState;I)Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/lazy/LazyListScrollingKt;->BoundDistance:F

    return v0
.end method

.method public static final synthetic c()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/lazy/LazyListScrollingKt;->TargetDistance:F

    return v0
.end method

.method private static final d(Landroidx/compose/foundation/lazy/LazyListState;I)Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->m()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->b()Ljava/util/List;

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
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 23
    .line 24
    .line 25
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

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
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 36
    return-object v2
.end method
