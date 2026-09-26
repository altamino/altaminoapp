.class public final Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListItemPlacementAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,442:1\n79#2,2:443\n32#2,6:445\n81#2:451\n32#2,6:452\n32#2,4:458\n37#2:465\n79#2,2:467\n32#2,4:469\n37#2:474\n81#2:475\n79#2,2:476\n32#2,6:478\n81#2:484\n49#2,4:488\n54#2:494\n79#3:462\n86#3:463\n86#3:464\n86#3:466\n86#3:473\n86#3:485\n86#3:486\n79#3:487\n86#3:492\n79#3:493\n*S KotlinDebug\n*F\n+ 1 LazyListItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator\n*L\n74#1:443,2\n74#1:445,6\n74#1:451\n90#1:452,6\n98#1:458,4\n98#1:465\n199#1:467,2\n199#1:469,4\n199#1:474\n199#1:475\n206#1:476,2\n206#1:478,6\n206#1:484\n381#1:488,4\n381#1:494\n143#1:462\n146#1:463\n157#1:464\n193#1:466\n200#1:473\n257#1:485\n258#1:486\n375#1:487\n382#1:492\n387#1:493\n*E\n"
.end annotation


# instance fields
.field private final isVertical:Z

.field private keyToIndexMap:Ljava/util/Map;
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

.field private final keyToItemInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final positionedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/o0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewportEndItemIndex:I

.field private viewportEndItemNotVisiblePartSize:I

.field private viewportStartItemIndex:I

.field private viewportStartItemNotVisiblePartSize:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/o0;Z)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->scope:Lkotlinx/coroutines/o0;

    .line 11
    .line 12
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    .line 13
    .line 14
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 26
    const/4 p1, -0x1

    .line 27
    .line 28
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 29
    .line 30
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 31
    .line 32
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 36
    .line 37
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 38
    return-void
.end method

.method private final a(IIIJZIILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJZII",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 5
    .line 6
    if-nez p6, :cond_1

    .line 7
    .line 8
    if-ge v2, p1, :cond_0

    .line 9
    :goto_0
    move v2, v1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    move v2, v0

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_1
    if-le v2, p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :goto_1
    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 18
    .line 19
    if-nez p6, :cond_3

    .line 20
    .line 21
    if-le v3, p1, :cond_2

    .line 22
    :goto_2
    move v3, v1

    .line 23
    goto :goto_3

    .line 24
    :cond_2
    move v3, v0

    .line 25
    goto :goto_3

    .line 26
    .line 27
    :cond_3
    if-ge v3, p1, :cond_2

    .line 28
    goto :goto_2

    .line 29
    .line 30
    :goto_3
    if-eqz v2, :cond_6

    .line 31
    .line 32
    if-nez p6, :cond_4

    .line 33
    .line 34
    iget p2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 35
    add-int/2addr p2, v1

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p1}, Lj8/m;->v(II)Lj8/i;

    .line 39
    move-result-object p1

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    add-int/2addr p1, v1

    .line 42
    .line 43
    iget p2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Lj8/m;->v(II)Lj8/i;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    :goto_4
    invoke-virtual {p1}, Lj8/g;->e()I

    .line 51
    move-result p2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lj8/g;->f()I

    .line 55
    move-result p1

    .line 56
    .line 57
    if-gt p2, p1, :cond_5

    .line 58
    .line 59
    .line 60
    :goto_5
    invoke-direct {p0, p9, p2, p3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->c(Ljava/util/List;II)I

    .line 61
    move-result p6

    .line 62
    add-int/2addr v0, p6

    .line 63
    .line 64
    if-eq p2, p1, :cond_5

    .line 65
    .line 66
    add-int/lit8 p2, p2, 0x1

    .line 67
    goto :goto_5

    .line 68
    .line 69
    :cond_5
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 70
    add-int/2addr p7, p1

    .line 71
    add-int/2addr p7, v0

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p4, p5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->d(J)I

    .line 75
    move-result p1

    .line 76
    .line 77
    add-int p8, p7, p1

    .line 78
    goto :goto_8

    .line 79
    .line 80
    :cond_6
    if-eqz v3, :cond_9

    .line 81
    .line 82
    if-nez p6, :cond_7

    .line 83
    add-int/2addr p1, v1

    .line 84
    .line 85
    iget p6, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p6}, Lj8/m;->v(II)Lj8/i;

    .line 89
    move-result-object p1

    .line 90
    goto :goto_6

    .line 91
    .line 92
    :cond_7
    iget p6, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 93
    add-int/2addr p6, v1

    .line 94
    .line 95
    .line 96
    invoke-static {p6, p1}, Lj8/m;->v(II)Lj8/i;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    :goto_6
    invoke-virtual {p1}, Lj8/g;->e()I

    .line 101
    move-result p6

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lj8/g;->f()I

    .line 105
    move-result p1

    .line 106
    .line 107
    if-gt p6, p1, :cond_8

    .line 108
    .line 109
    .line 110
    :goto_7
    invoke-direct {p0, p9, p6, p3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->c(Ljava/util/List;II)I

    .line 111
    move-result p7

    .line 112
    add-int/2addr p2, p7

    .line 113
    .line 114
    if-eq p6, p1, :cond_8

    .line 115
    .line 116
    add-int/lit8 p6, p6, 0x1

    .line 117
    goto :goto_7

    .line 118
    .line 119
    :cond_8
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 120
    sub-int/2addr p1, p2

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, p4, p5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->d(J)I

    .line 124
    move-result p2

    .line 125
    .line 126
    add-int p8, p1, p2

    .line 127
    :cond_9
    :goto_8
    return p8
.end method

.method private final c(Ljava/util/List;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;II)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-lt p2, v0, :cond_4

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 28
    move-result v0

    .line 29
    .line 30
    if-le p2, v0, :cond_0

    .line 31
    goto :goto_2

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {p1}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 41
    move-result v0

    .line 42
    .line 43
    sub-int v0, p2, v0

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 53
    move-result v1

    .line 54
    sub-int/2addr v1, p2

    .line 55
    .line 56
    if-ge v0, v1, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x0

    .line 62
    .line 63
    :goto_0
    if-ge v1, v0, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 73
    move-result v3

    .line 74
    .line 75
    if-ne v3, p2, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->i()I

    .line 79
    move-result p1

    .line 80
    return p1

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 84
    move-result v2

    .line 85
    .line 86
    if-gt v2, p2, :cond_4

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_0

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-static {p1}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 93
    move-result v0

    .line 94
    :goto_1
    const/4 v1, -0x1

    .line 95
    .line 96
    if-ge v1, v0, :cond_4

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 106
    move-result v2

    .line 107
    .line 108
    if-ne v2, p2, :cond_3

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->i()I

    .line 112
    move-result p1

    .line 113
    return p1

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 117
    move-result v1

    .line 118
    .line 119
    if-lt v1, p2, :cond_4

    .line 120
    .line 121
    add-int/lit8 v0, v0, -0x1

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    :goto_2
    return p3
.end method

.method private final d(J)I
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 13
    move-result p1

    .line 14
    :goto_0
    return p1
.end method

.method private final g(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->b()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->h()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-le v1, v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->b()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/collections/t;->M(Ljava/util/List;)Ljava/lang/Object;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->b()Ljava/util/List;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->h()I

    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    if-ge v1, v2, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->b()Ljava/util/List;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 47
    move-result v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->g(I)J

    .line 51
    move-result-wide v4

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->b()Ljava/util/List;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    new-instance v6, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->a()J

    .line 61
    move-result-wide v7

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 65
    move-result v9

    .line 66
    .line 67
    .line 68
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 69
    move-result v10

    .line 70
    sub-int/2addr v9, v10

    .line 71
    .line 72
    .line 73
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 74
    move-result v4

    .line 75
    .line 76
    .line 77
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 78
    move-result v5

    .line 79
    sub-int/2addr v4, v5

    .line 80
    .line 81
    .line 82
    invoke-static {v9, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 83
    move-result-wide v4

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->e(I)I

    .line 87
    move-result v1

    .line 88
    .line 89
    .line 90
    invoke-direct {v6, v4, v5, v1, v3}, Landroidx/compose/foundation/lazy/PlaceableInfo;-><init>(JILkotlin/jvm/internal/k;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->b()Ljava/util/List;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 102
    move-result v2

    .line 103
    const/4 v4, 0x0

    .line 104
    .line 105
    :goto_2
    if-ge v4, v2, :cond_3

    .line 106
    .line 107
    .line 108
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    check-cast v5, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/PlaceableInfo;->d()J

    .line 115
    move-result-wide v6

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->a()J

    .line 119
    move-result-wide v8

    .line 120
    .line 121
    .line 122
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 123
    move-result v10

    .line 124
    .line 125
    .line 126
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 127
    move-result v11

    .line 128
    add-int/2addr v10, v11

    .line 129
    .line 130
    .line 131
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 132
    move-result v6

    .line 133
    .line 134
    .line 135
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 136
    move-result v7

    .line 137
    add-int/2addr v6, v7

    .line 138
    .line 139
    .line 140
    invoke-static {v10, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 141
    move-result-wide v6

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->g(I)J

    .line 145
    move-result-wide v8

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->e(I)I

    .line 149
    move-result v10

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v10}, Landroidx/compose/foundation/lazy/PlaceableInfo;->f(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->b(I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 156
    move-result-object v10

    .line 157
    .line 158
    .line 159
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->i(JJ)Z

    .line 160
    move-result v6

    .line 161
    .line 162
    if-nez v6, :cond_2

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->a()J

    .line 166
    move-result-wide v6

    .line 167
    .line 168
    .line 169
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 170
    move-result v11

    .line 171
    .line 172
    .line 173
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 174
    move-result v12

    .line 175
    sub-int/2addr v11, v12

    .line 176
    .line 177
    .line 178
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 179
    move-result v8

    .line 180
    .line 181
    .line 182
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 183
    move-result v6

    .line 184
    sub-int/2addr v8, v6

    .line 185
    .line 186
    .line 187
    invoke-static {v11, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 188
    move-result-wide v6

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v6, v7}, Landroidx/compose/foundation/lazy/PlaceableInfo;->g(J)V

    .line 192
    .line 193
    if-eqz v10, :cond_2

    .line 194
    const/4 v6, 0x1

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/lazy/PlaceableInfo;->e(Z)V

    .line 198
    .line 199
    move-object/from16 v6, p0

    .line 200
    .line 201
    iget-object v11, v6, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->scope:Lkotlinx/coroutines/o0;

    .line 202
    const/4 v12, 0x0

    .line 203
    const/4 v13, 0x0

    .line 204
    .line 205
    new-instance v14, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1;

    .line 206
    .line 207
    .line 208
    invoke-direct {v14, v5, v10, v3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1;-><init>(Landroidx/compose/foundation/lazy/PlaceableInfo;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/d;)V

    .line 209
    const/4 v15, 0x3

    .line 210
    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    .line 214
    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 215
    goto :goto_3

    .line 216
    .line 217
    :cond_2
    move-object/from16 v6, p0

    .line 218
    .line 219
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 220
    goto :goto_2

    .line 221
    .line 222
    :cond_3
    move-object/from16 v6, p0

    .line 223
    return-void
.end method

.method private final h(I)J
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, p1

    .line 9
    .line 10
    :goto_0
    if-nez v0, :cond_1

    .line 11
    move p1, v1

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {v2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;IIIJ)J
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/foundation/lazy/ItemInfo;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    return-wide p5

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ItemInfo;->b()Ljava/util/List;

    .line 20
    move-result-object p5

    .line 21
    .line 22
    .line 23
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/PlaceableInfo;->a()Landroidx/compose/animation/core/Animatable;

    .line 30
    move-result-object p5

    .line 31
    .line 32
    .line 33
    invoke-virtual {p5}, Landroidx/compose/animation/core/Animatable;->n()Ljava/lang/Object;

    .line 34
    move-result-object p5

    .line 35
    .line 36
    check-cast p5, Landroidx/compose/ui/unit/IntOffset;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p5}, Landroidx/compose/ui/unit/IntOffset;->n()J

    .line 40
    move-result-wide p5

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ItemInfo;->a()J

    .line 44
    move-result-wide v0

    .line 45
    .line 46
    .line 47
    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 48
    move-result v2

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 52
    move-result v3

    .line 53
    add-int/2addr v2, v3

    .line 54
    .line 55
    .line 56
    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 57
    move-result p5

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 61
    move-result p6

    .line 62
    add-int/2addr p5, p6

    .line 63
    .line 64
    .line 65
    invoke-static {v2, p5}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 66
    move-result-wide p5

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/PlaceableInfo;->d()J

    .line 70
    move-result-wide v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ItemInfo;->a()J

    .line 74
    move-result-wide v2

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 78
    move-result p1

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 82
    move-result v4

    .line 83
    add-int/2addr p1, v4

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 87
    move-result v0

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 91
    move-result v1

    .line 92
    add-int/2addr v0, v1

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 96
    move-result-wide v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/PlaceableInfo;->b()Z

    .line 100
    move-result p1

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->d(J)I

    .line 106
    move-result p1

    .line 107
    .line 108
    if-ge p1, p3, :cond_1

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, p5, p6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->d(J)I

    .line 112
    move-result p1

    .line 113
    .line 114
    if-lt p1, p3, :cond_2

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->d(J)I

    .line 118
    move-result p1

    .line 119
    .line 120
    if-le p1, p4, :cond_3

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, p5, p6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->d(J)I

    .line 124
    move-result p1

    .line 125
    .line 126
    if-le p1, p4, :cond_3

    .line 127
    .line 128
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->scope:Lkotlinx/coroutines/o0;

    .line 129
    const/4 v1, 0x0

    .line 130
    const/4 v2, 0x0

    .line 131
    .line 132
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$getAnimatedOffset$1;

    .line 133
    const/4 p1, 0x0

    .line 134
    .line 135
    .line 136
    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$getAnimatedOffset$1;-><init>(Landroidx/compose/foundation/lazy/PlaceableInfo;Lkotlin/coroutines/d;)V

    .line 137
    const/4 v4, 0x3

    .line 138
    const/4 v5, 0x0

    .line 139
    .line 140
    .line 141
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 142
    :cond_3
    return-wide p5
.end method

.method public final e(IIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;)V
    .locals 31
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    const-string v0, "positionedItems"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemProvider"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v13, 0x0

    move v1, v13

    :goto_0
    if-ge v1, v0, :cond_19

    .line 2
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 4
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->c()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-boolean v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    if-eqz v0, :cond_0

    move/from16 v14, p3

    goto :goto_1

    :cond_0
    move/from16 v14, p2

    :goto_1
    move/from16 v2, p1

    if-eqz p4, :cond_1

    neg-int v0, v2

    goto :goto_2

    :cond_1
    move v0, v2

    .line 5
    :goto_2
    invoke-direct {v10, v0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->h(I)J

    move-result-wide v15

    .line 6
    invoke-static/range {p5 .. p5}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 7
    invoke-static/range {p5 .. p5}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 8
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    move v1, v13

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_3

    .line 9
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    iget-object v4, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 11
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/ItemInfo;

    if-nez v4, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/compose/foundation/lazy/ItemInfo;->c(I)V

    .line 12
    :goto_4
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->i()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 13
    :cond_3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    div-int v19, v2, v0

    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 15
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v9

    move v8, v13

    :goto_5
    if-ge v8, v9, :cond_c

    .line 16
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 17
    move-object v7, v0

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 18
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 19
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/ItemInfo;

    if-nez v0, :cond_a

    .line 20
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    new-instance v6, Landroidx/compose/foundation/lazy/ItemInfo;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    invoke-direct {v6, v0}, Landroidx/compose/foundation/lazy/ItemInfo;-><init>(I)V

    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 22
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v7, v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->g(I)J

    move-result-wide v4

    .line 24
    invoke-virtual {v7, v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->e(I)I

    move-result v20

    if-nez v0, :cond_4

    .line 25
    invoke-direct {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->d(J)I

    move-result v0

    move-wide/from16 v26, v4

    move-object/from16 p1, v6

    move-object/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    goto :goto_9

    :cond_4
    if-nez p4, :cond_5

    .line 26
    invoke-direct {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->d(J)I

    move-result v1

    :goto_6
    move/from16 v21, v1

    goto :goto_7

    .line 27
    :cond_5
    invoke-direct {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->d(J)I

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->i()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, v20

    goto :goto_6

    .line 28
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->i()I

    move-result v2

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    move/from16 v3, v19

    move-wide/from16 v26, v4

    move-wide v4, v15

    move-object/from16 p1, v6

    move/from16 v6, p4

    move-object/from16 v28, v7

    move v7, v14

    move/from16 v29, v8

    move/from16 v8, v21

    move/from16 v30, v9

    move-object/from16 v9, p5

    .line 30
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->a(IIIJZIILjava/util/List;)I

    move-result v0

    if-eqz p4, :cond_6

    .line 31
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSize()I

    move-result v1

    sub-int v1, v1, v20

    goto :goto_8

    :cond_6
    move v1, v13

    :goto_8
    add-int/2addr v0, v1

    :goto_9
    iget-boolean v1, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    if-eqz v1, :cond_7

    const/16 v22, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-wide/from16 v20, v26

    move/from16 v23, v0

    .line 32
    invoke-static/range {v20 .. v25}, Landroidx/compose/ui/unit/IntOffset;->g(JIIILjava/lang/Object;)J

    move-result-wide v0

    goto :goto_a

    :cond_7
    const/16 v23, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x0

    move-wide/from16 v20, v26

    move/from16 v22, v0

    .line 33
    invoke-static/range {v20 .. v25}, Landroidx/compose/ui/unit/IntOffset;->g(JIIILjava/lang/Object;)J

    move-result-wide v0

    .line 34
    :goto_a
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->h()I

    move-result v2

    move v3, v13

    :goto_b
    if-ge v3, v2, :cond_8

    move-object/from16 v4, v28

    .line 35
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->g(I)J

    move-result-wide v5

    .line 36
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    move-result v7

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    move-result v5

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    move-result-wide v5

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/ItemInfo;->b()Ljava/util/List;

    move-result-object v7

    .line 38
    new-instance v8, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 39
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    move-result v9

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    move-result v20

    add-int v9, v9, v20

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    move-result v20

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    move-result v5

    add-int v5, v20, v5

    invoke-static {v9, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    move-result-wide v5

    .line 40
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->e(I)I

    move-result v9

    const/4 v13, 0x0

    .line 41
    invoke-direct {v8, v5, v6, v9, v13}, Landroidx/compose/foundation/lazy/PlaceableInfo;-><init>(JILkotlin/jvm/internal/k;)V

    .line 42
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v5, Lw7/l0;->INSTANCE:Lw7/l0;

    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    goto :goto_b

    :cond_8
    move-object/from16 v4, v28

    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 44
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->d()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-direct {v10, v4, v2}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->g(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V

    goto :goto_c

    :cond_9
    move/from16 v29, v8

    move/from16 v30, v9

    goto :goto_c

    :cond_a
    move-object v4, v7

    move/from16 v29, v8

    move/from16 v30, v9

    .line 46
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 47
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/ItemInfo;->a()J

    move-result-wide v1

    .line 48
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    move-result v3

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    move-result v1

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    move-result-wide v1

    .line 49
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/lazy/ItemInfo;->d(J)V

    .line 50
    invoke-direct {v10, v4, v0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->g(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V

    goto :goto_c

    :cond_b
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 51
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    add-int/lit8 v8, v29, 0x1

    move/from16 v9, v30

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_c
    if-nez p4, :cond_d

    .line 52
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 53
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->a()I

    move-result v0

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 54
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 55
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->a()I

    move-result v0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->i()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v14

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    goto :goto_d

    .line 56
    :cond_d
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 57
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->a()I

    move-result v0

    sub-int v0, v14, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSize()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 58
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v0

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 59
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->a()I

    move-result v0

    neg-int v0, v0

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->i()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    :goto_d
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 60
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 61
    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 62
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/compose/foundation/lazy/ItemInfo;

    .line 65
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->a()J

    move-result-wide v1

    .line 66
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    move-result v3

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    move-result v1

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    move-result-wide v1

    .line 67
    invoke-virtual {v9, v1, v2}, Landroidx/compose/foundation/lazy/ItemInfo;->d(J)V

    .line 68
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->b()Ljava/util/List;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x1

    if-ge v3, v2, :cond_f

    .line 71
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 72
    check-cast v5, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 73
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/PlaceableInfo;->d()J

    move-result-wide v6

    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->a()J

    move-result-wide v17

    .line 74
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    move-result v8

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    move-result v21

    add-int v8, v8, v21

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    move-result v6

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v8, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    move-result-wide v6

    .line 75
    invoke-direct {v10, v6, v7}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->d(J)I

    move-result v8

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/PlaceableInfo;->c()I

    move-result v5

    add-int/2addr v8, v5

    if-lez v8, :cond_e

    .line 76
    invoke-direct {v10, v6, v7}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->d(J)I

    move-result v5

    if-ge v5, v14, :cond_e

    move v1, v4

    goto :goto_10

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    .line 77
    :goto_10
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->b()Ljava/util/List;

    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v3, :cond_11

    .line 79
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 80
    check-cast v6, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 81
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/PlaceableInfo;->b()Z

    move-result v6

    if-eqz v6, :cond_10

    move v2, v4

    goto :goto_12

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_12
    xor-int/2addr v2, v4

    if-nez v1, :cond_13

    if-nez v2, :cond_12

    goto :goto_14

    :cond_12
    :goto_13
    move/from16 v3, p2

    move/from16 v4, p3

    goto :goto_16

    :cond_13
    :goto_14
    if-eqz v0, :cond_12

    .line 82
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_13

    .line 83
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v1

    invoke-virtual {v12, v1}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->a(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v8

    .line 84
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->e()I

    move-result v2

    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    move/from16 v3, v19

    move-wide v4, v15

    move/from16 v6, p4

    move v7, v14

    move-object/from16 p1, v8

    move v8, v14

    move-object v12, v9

    move-object/from16 v9, p5

    .line 86
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->a(IIIJZIILjava/util/List;)I

    move-result v0

    if-eqz p4, :cond_15

    sub-int v0, v14, v0

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->d()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_15
    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 88
    invoke-virtual {v1, v0, v3, v4}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->f(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v0

    .line 89
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-direct {v10, v0, v12}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->g(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V

    :goto_15
    move-object/from16 v12, p6

    goto/16 :goto_e

    .line 91
    :goto_16
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    :cond_16
    move/from16 v3, p2

    move/from16 v4, p3

    goto :goto_15

    .line 92
    :cond_17
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    return-void

    :cond_18
    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v12, p6

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 93
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->f()V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 12
    const/4 v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 18
    .line 19
    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 20
    .line 21
    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 22
    return-void
.end method
