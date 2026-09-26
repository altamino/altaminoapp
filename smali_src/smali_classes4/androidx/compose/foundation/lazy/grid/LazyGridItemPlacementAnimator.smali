.class public final Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridItemPlacementAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,463:1\n79#2,2:464\n32#2,6:466\n81#2:472\n32#2,6:473\n32#2,4:479\n37#2:484\n79#2,2:486\n32#2,4:488\n37#2:493\n81#2:494\n79#2,2:495\n32#2,6:497\n81#2:503\n49#2,4:507\n54#2:513\n86#3:483\n86#3:485\n86#3:492\n86#3:504\n86#3:505\n79#3:506\n86#3:511\n79#3:512\n*S KotlinDebug\n*F\n+ 1 LazyGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator\n*L\n83#1:464,2\n83#1:466,6\n83#1:472\n99#1:473,6\n144#1:479,4\n144#1:484\n242#1:486,2\n242#1:488,4\n242#1:493\n242#1:494\n249#1:495,2\n249#1:497,6\n249#1:503\n401#1:507,4\n401#1:513\n198#1:483\n236#1:485\n243#1:492\n315#1:504\n316#1:505\n395#1:506\n402#1:511\n407#1:512\n*E\n"
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
            "Landroidx/compose/foundation/lazy/grid/ItemInfo;",
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

.field private slotsPerLine:I

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
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->scope:Lkotlinx/coroutines/o0;

    .line 11
    .line 12
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    .line 13
    .line 14
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 26
    const/4 p1, -0x1

    .line 27
    .line 28
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 29
    .line 30
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 31
    .line 32
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 36
    .line 37
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 38
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    .line 3
    return p0
.end method

.method private final b(IIIJZII)I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->slotsPerLine:I

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 9
    .line 10
    if-nez p6, :cond_1

    .line 11
    .line 12
    if-ge v2, p1, :cond_0

    .line 13
    :goto_0
    move v2, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move v2, v0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    if-le v2, p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :goto_1
    if-nez p6, :cond_2

    .line 22
    .line 23
    iget p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 24
    .line 25
    if-le p6, p1, :cond_3

    .line 26
    :goto_2
    move v0, v1

    .line 27
    goto :goto_3

    .line 28
    .line 29
    :cond_2
    iget p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 30
    .line 31
    if-ge p6, p1, :cond_3

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 35
    .line 36
    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 37
    sub-int/2addr p1, p2

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 41
    move-result p1

    .line 42
    .line 43
    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->slotsPerLine:I

    .line 44
    add-int/2addr p1, p2

    .line 45
    sub-int/2addr p1, v1

    .line 46
    div-int/2addr p1, p2

    .line 47
    .line 48
    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 49
    add-int/2addr p7, p2

    .line 50
    sub-int/2addr p1, v1

    .line 51
    mul-int/2addr p3, p1

    .line 52
    add-int/2addr p7, p3

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p4, p5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 56
    move-result p1

    .line 57
    .line 58
    add-int p8, p7, p1

    .line 59
    goto :goto_4

    .line 60
    .line 61
    :cond_4
    if-eqz v0, :cond_5

    .line 62
    .line 63
    iget p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 64
    sub-int/2addr p6, p1

    .line 65
    .line 66
    .line 67
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    .line 68
    move-result p1

    .line 69
    .line 70
    iget p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->slotsPerLine:I

    .line 71
    add-int/2addr p1, p6

    .line 72
    sub-int/2addr p1, v1

    .line 73
    div-int/2addr p1, p6

    .line 74
    .line 75
    iget p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 76
    sub-int/2addr p6, p2

    .line 77
    sub-int/2addr p1, v1

    .line 78
    mul-int/2addr p3, p1

    .line 79
    sub-int/2addr p6, p3

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p4, p5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 83
    move-result p1

    .line 84
    .line 85
    add-int p8, p6, p1

    .line 86
    :cond_5
    :goto_4
    return p8

    .line 87
    .line 88
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    const-string p2, "Failed requirement."

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p1
.end method

.method private final d(J)I
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

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

.method private final g(Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;Landroidx/compose/foundation/lazy/grid/ItemInfo;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->d()Ljava/util/List;

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
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->q()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-le v1, v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->d()Ljava/util/List;

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
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->d()Ljava/util/List;

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
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->q()I

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
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->d()Ljava/util/List;

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
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->c()J

    .line 51
    move-result-wide v4

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->d()Ljava/util/List;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    new-instance v6, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->c()J

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
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->m(I)I

    .line 87
    move-result v1

    .line 88
    .line 89
    .line 90
    invoke-direct {v6, v4, v5, v1, v3}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;-><init>(JILkotlin/jvm/internal/k;)V

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
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->d()Ljava/util/List;

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
    check-cast v5, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->d()J

    .line 115
    move-result-wide v6

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->c()J

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
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->p()J

    .line 145
    move-result-wide v8

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->m(I)I

    .line 149
    move-result v10

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v10}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->f(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->e(I)Landroidx/compose/animation/core/FiniteAnimationSpec;

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
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->c()J

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
    invoke-virtual {v5, v6, v7}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->g(J)V

    .line 192
    .line 193
    if-eqz v10, :cond_2

    .line 194
    const/4 v6, 0x1

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->e(Z)V

    .line 198
    .line 199
    move-object/from16 v6, p0

    .line 200
    .line 201
    iget-object v11, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->scope:Lkotlinx/coroutines/o0;

    .line 202
    const/4 v12, 0x0

    .line 203
    const/4 v13, 0x0

    .line 204
    .line 205
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;

    .line 206
    .line 207
    .line 208
    invoke-direct {v14, v5, v10, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/PlaceableInfo;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/d;)V

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
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

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
.method public final c(Ljava/lang/Object;IIIJ)J
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
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    return-wide p5

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->d()Ljava/util/List;

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
    check-cast p2, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->a()Landroidx/compose/animation/core/Animatable;

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
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->c()J

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
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->d()J

    .line 70
    move-result-wide v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->c()J

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
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->b()Z

    .line 100
    move-result p1

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 106
    move-result p1

    .line 107
    .line 108
    if-ge p1, p3, :cond_1

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, p5, p6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 112
    move-result p1

    .line 113
    .line 114
    if-lt p1, p3, :cond_2

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 118
    move-result p1

    .line 119
    .line 120
    if-le p1, p4, :cond_3

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, p5, p6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 124
    move-result p1

    .line 125
    .line 126
    if-le p1, p4, :cond_3

    .line 127
    .line 128
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->scope:Lkotlinx/coroutines/o0;

    .line 129
    const/4 v1, 0x0

    .line 130
    const/4 v2, 0x0

    .line 131
    .line 132
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$getAnimatedOffset$1;

    .line 133
    const/4 p1, 0x0

    .line 134
    .line 135
    .line 136
    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$getAnimatedOffset$1;-><init>(Landroidx/compose/foundation/lazy/grid/PlaceableInfo;Lkotlin/coroutines/d;)V

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

.method public final e(IIIIZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;)V
    .locals 31
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v9, p0

    .line 3
    .line 4
    move-object/from16 v10, p6

    .line 5
    .line 6
    const-string v0, "positionedItems"

    .line 7
    .line 8
    .line 9
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v0, "measuredItemProvider"

    .line 12
    .line 13
    move-object/from16 v11, p7

    .line 14
    .line 15
    .line 16
    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    :goto_0
    if-ge v1, v0, :cond_1d

    .line 24
    .line 25
    .line 26
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->h()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_1c

    .line 36
    .line 37
    move/from16 v2, p4

    .line 38
    .line 39
    iput v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->slotsPerLine:I

    .line 40
    .line 41
    iget-boolean v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    move/from16 v13, p3

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_0
    move/from16 v13, p2

    .line 49
    .line 50
    :goto_1
    move/from16 v3, p1

    .line 51
    .line 52
    if-eqz p5, :cond_1

    .line 53
    neg-int v0, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    move v0, v3

    .line 56
    .line 57
    .line 58
    :goto_2
    invoke-direct {v9, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->h(I)J

    .line 59
    move-result-wide v14

    .line 60
    .line 61
    .line 62
    invoke-static/range {p6 .. p6}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    move-object/from16 v16, v0

    .line 66
    .line 67
    check-cast v16, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 68
    .line 69
    .line 70
    invoke-static/range {p6 .. p6}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    move-object/from16 v17, v0

    .line 74
    .line 75
    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 76
    .line 77
    .line 78
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x0

    .line 81
    .line 82
    :goto_3
    if-ge v1, v0, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 89
    .line 90
    iget-object v3, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->i()Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    .line 97
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    check-cast v3, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 101
    .line 102
    if-nez v3, :cond_2

    .line 103
    goto :goto_4

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    .line 107
    move-result v4

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->g(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->g()I

    .line 114
    move-result v4

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->f(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->f()I

    .line 121
    move-result v2

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->e(I)V

    .line 125
    .line 126
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 127
    goto :goto_3

    .line 128
    .line 129
    :cond_3
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1;

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v9, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Ljava/util/List;)V

    .line 133
    const/4 v1, 0x0

    .line 134
    const/4 v2, 0x0

    .line 135
    const/4 v3, 0x0

    .line 136
    .line 137
    .line 138
    :goto_5
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    .line 139
    move-result v4

    .line 140
    .line 141
    if-ge v1, v4, :cond_6

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    .line 148
    invoke-interface {v0, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    check-cast v4, Ljava/lang/Number;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 155
    move-result v4

    .line 156
    const/4 v5, -0x1

    .line 157
    .line 158
    if-ne v4, v5, :cond_4

    .line 159
    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 161
    goto :goto_5

    .line 162
    :cond_4
    const/4 v5, 0x0

    .line 163
    .line 164
    .line 165
    :goto_6
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    .line 166
    move-result v6

    .line 167
    .line 168
    if-ge v1, v6, :cond_5

    .line 169
    .line 170
    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v6

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v6}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    move-result-object v6

    .line 177
    .line 178
    check-cast v6, Ljava/lang/Number;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 182
    move-result v6

    .line 183
    .line 184
    if-ne v6, v4, :cond_5

    .line 185
    .line 186
    .line 187
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    move-result-object v6

    .line 189
    .line 190
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->o()I

    .line 194
    move-result v6

    .line 195
    .line 196
    .line 197
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 198
    move-result v5

    .line 199
    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 201
    goto :goto_6

    .line 202
    :cond_5
    add-int/2addr v2, v5

    .line 203
    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 205
    goto :goto_5

    .line 206
    .line 207
    :cond_6
    div-int v18, v2, v3

    .line 208
    .line 209
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 210
    .line 211
    .line 212
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 213
    .line 214
    .line 215
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    .line 216
    move-result v8

    .line 217
    const/4 v7, 0x0

    .line 218
    .line 219
    :goto_7
    if-ge v7, v8, :cond_e

    .line 220
    .line 221
    .line 222
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v0

    .line 224
    move-object v6, v0

    .line 225
    .line 226
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 227
    .line 228
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->i()Ljava/lang/Object;

    .line 232
    move-result-object v1

    .line 233
    .line 234
    .line 235
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->i()Ljava/lang/Object;

    .line 241
    move-result-object v1

    .line 242
    .line 243
    .line 244
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    move-result-object v0

    .line 246
    .line 247
    check-cast v0, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 248
    .line 249
    if-nez v0, :cond_c

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->h()Z

    .line 253
    move-result v0

    .line 254
    .line 255
    if-eqz v0, :cond_b

    .line 256
    .line 257
    new-instance v4, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    .line 261
    move-result v0

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->g()I

    .line 265
    move-result v1

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->f()I

    .line 269
    move-result v2

    .line 270
    .line 271
    .line 272
    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;-><init>(III)V

    .line 273
    .line 274
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->i()Ljava/lang/Object;

    .line 278
    move-result-object v1

    .line 279
    .line 280
    .line 281
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    move-result-object v0

    .line 283
    .line 284
    check-cast v0, Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->p()J

    .line 288
    move-result-wide v2

    .line 289
    .line 290
    if-nez v0, :cond_7

    .line 291
    .line 292
    .line 293
    invoke-direct {v9, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 294
    move-result v0

    .line 295
    .line 296
    move-wide/from16 v20, v2

    .line 297
    .line 298
    move-object/from16 p1, v4

    .line 299
    .line 300
    move-object/from16 p4, v6

    .line 301
    .line 302
    move/from16 v25, v7

    .line 303
    .line 304
    move/from16 v26, v8

    .line 305
    goto :goto_a

    .line 306
    .line 307
    :cond_7
    if-nez p5, :cond_8

    .line 308
    .line 309
    .line 310
    invoke-direct {v9, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 311
    move-result v1

    .line 312
    .line 313
    :goto_8
    move/from16 v19, v1

    .line 314
    goto :goto_9

    .line 315
    .line 316
    .line 317
    :cond_8
    invoke-direct {v9, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 318
    move-result v1

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->o()I

    .line 322
    move-result v5

    .line 323
    sub-int/2addr v1, v5

    .line 324
    goto :goto_8

    .line 325
    .line 326
    .line 327
    :goto_9
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->o()I

    .line 328
    move-result v5

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 332
    move-result v1

    .line 333
    .line 334
    move-object/from16 v0, p0

    .line 335
    .line 336
    move-wide/from16 v20, v2

    .line 337
    move v2, v5

    .line 338
    .line 339
    move/from16 v3, v18

    .line 340
    .line 341
    move-object/from16 p1, v4

    .line 342
    move-wide v4, v14

    .line 343
    .line 344
    move-object/from16 p4, v6

    .line 345
    .line 346
    move/from16 v6, p5

    .line 347
    .line 348
    move/from16 v25, v7

    .line 349
    move v7, v13

    .line 350
    .line 351
    move/from16 v26, v8

    .line 352
    .line 353
    move/from16 v8, v19

    .line 354
    .line 355
    .line 356
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->b(IIIJZII)I

    .line 357
    move-result v0

    .line 358
    .line 359
    :goto_a
    iget-boolean v1, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    .line 360
    .line 361
    if-eqz v1, :cond_9

    .line 362
    const/4 v1, 0x0

    .line 363
    .line 364
    const/16 v23, 0x1

    .line 365
    .line 366
    const/16 v24, 0x0

    .line 367
    .line 368
    move-wide/from16 v19, v20

    .line 369
    .line 370
    move/from16 v21, v1

    .line 371
    .line 372
    move/from16 v22, v0

    .line 373
    .line 374
    .line 375
    invoke-static/range {v19 .. v24}, Landroidx/compose/ui/unit/IntOffset;->g(JIIILjava/lang/Object;)J

    .line 376
    move-result-wide v0

    .line 377
    goto :goto_b

    .line 378
    .line 379
    :cond_9
    const/16 v22, 0x0

    .line 380
    .line 381
    const/16 v23, 0x2

    .line 382
    .line 383
    const/16 v24, 0x0

    .line 384
    .line 385
    move-wide/from16 v19, v20

    .line 386
    .line 387
    move/from16 v21, v0

    .line 388
    .line 389
    .line 390
    invoke-static/range {v19 .. v24}, Landroidx/compose/ui/unit/IntOffset;->g(JIIILjava/lang/Object;)J

    .line 391
    move-result-wide v0

    .line 392
    .line 393
    .line 394
    :goto_b
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->q()I

    .line 395
    move-result v2

    .line 396
    const/4 v3, 0x0

    .line 397
    .line 398
    :goto_c
    if-ge v3, v2, :cond_a

    .line 399
    .line 400
    .line 401
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->d()Ljava/util/List;

    .line 402
    move-result-object v4

    .line 403
    .line 404
    new-instance v5, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 405
    .line 406
    move-object/from16 v6, p4

    .line 407
    .line 408
    .line 409
    invoke-virtual {v6, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->m(I)I

    .line 410
    move-result v7

    .line 411
    const/4 v8, 0x0

    .line 412
    .line 413
    .line 414
    invoke-direct {v5, v0, v1, v7, v8}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;-><init>(JILkotlin/jvm/internal/k;)V

    .line 415
    .line 416
    .line 417
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    sget-object v4, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 420
    .line 421
    add-int/lit8 v3, v3, 0x1

    .line 422
    goto :goto_c

    .line 423
    .line 424
    :cond_a
    move-object/from16 v6, p4

    .line 425
    .line 426
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->i()Ljava/lang/Object;

    .line 430
    move-result-object v1

    .line 431
    .line 432
    move-object/from16 v2, p1

    .line 433
    .line 434
    .line 435
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    invoke-direct {v9, v6, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->g(Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;Landroidx/compose/foundation/lazy/grid/ItemInfo;)V

    .line 439
    goto :goto_d

    .line 440
    .line 441
    :cond_b
    move/from16 v25, v7

    .line 442
    .line 443
    move/from16 v26, v8

    .line 444
    goto :goto_d

    .line 445
    .line 446
    :cond_c
    move/from16 v25, v7

    .line 447
    .line 448
    move/from16 v26, v8

    .line 449
    .line 450
    .line 451
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->h()Z

    .line 452
    move-result v1

    .line 453
    .line 454
    if-eqz v1, :cond_d

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->c()J

    .line 458
    move-result-wide v1

    .line 459
    .line 460
    .line 461
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 462
    move-result v3

    .line 463
    .line 464
    .line 465
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 466
    move-result v4

    .line 467
    add-int/2addr v3, v4

    .line 468
    .line 469
    .line 470
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 471
    move-result v1

    .line 472
    .line 473
    .line 474
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 475
    move-result v2

    .line 476
    add-int/2addr v1, v2

    .line 477
    .line 478
    .line 479
    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 480
    move-result-wide v1

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->h(J)V

    .line 484
    .line 485
    .line 486
    invoke-direct {v9, v6, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->g(Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;Landroidx/compose/foundation/lazy/grid/ItemInfo;)V

    .line 487
    goto :goto_d

    .line 488
    .line 489
    :cond_d
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->i()Ljava/lang/Object;

    .line 493
    move-result-object v1

    .line 494
    .line 495
    .line 496
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    :goto_d
    add-int/lit8 v7, v25, 0x1

    .line 499
    .line 500
    move/from16 v8, v26

    .line 501
    .line 502
    goto/16 :goto_7

    .line 503
    .line 504
    :cond_e
    if-nez p5, :cond_f

    .line 505
    .line 506
    .line 507
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    .line 508
    move-result v0

    .line 509
    .line 510
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 511
    .line 512
    .line 513
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->c()J

    .line 514
    move-result-wide v0

    .line 515
    .line 516
    .line 517
    invoke-direct {v9, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 518
    move-result v0

    .line 519
    .line 520
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 521
    .line 522
    .line 523
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    .line 524
    move-result v0

    .line 525
    .line 526
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 527
    .line 528
    .line 529
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->c()J

    .line 530
    move-result-wide v0

    .line 531
    .line 532
    .line 533
    invoke-direct {v9, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 534
    move-result v0

    .line 535
    .line 536
    .line 537
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->k()I

    .line 538
    move-result v1

    .line 539
    add-int/2addr v0, v1

    .line 540
    sub-int/2addr v0, v13

    .line 541
    .line 542
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 543
    goto :goto_f

    .line 544
    .line 545
    .line 546
    :cond_f
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    .line 547
    move-result v0

    .line 548
    .line 549
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 550
    .line 551
    .line 552
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->c()J

    .line 553
    move-result-wide v0

    .line 554
    .line 555
    .line 556
    invoke-direct {v9, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 557
    move-result v0

    .line 558
    .line 559
    sub-int v0, v13, v0

    .line 560
    .line 561
    .line 562
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->j()I

    .line 563
    move-result v1

    .line 564
    sub-int/2addr v0, v1

    .line 565
    .line 566
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 567
    .line 568
    .line 569
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    .line 570
    move-result v0

    .line 571
    .line 572
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 573
    .line 574
    .line 575
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->c()J

    .line 576
    move-result-wide v0

    .line 577
    .line 578
    .line 579
    invoke-direct {v9, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 580
    move-result v0

    .line 581
    neg-int v0, v0

    .line 582
    .line 583
    .line 584
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->k()I

    .line 585
    move-result v1

    .line 586
    .line 587
    iget-boolean v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    .line 588
    .line 589
    if-eqz v2, :cond_10

    .line 590
    .line 591
    .line 592
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->a()J

    .line 593
    move-result-wide v2

    .line 594
    .line 595
    .line 596
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 597
    move-result v2

    .line 598
    goto :goto_e

    .line 599
    .line 600
    .line 601
    :cond_10
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->a()J

    .line 602
    move-result-wide v2

    .line 603
    .line 604
    .line 605
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 606
    move-result v2

    .line 607
    :goto_e
    sub-int/2addr v1, v2

    .line 608
    add-int/2addr v0, v1

    .line 609
    .line 610
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 611
    .line 612
    :goto_f
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 613
    .line 614
    .line 615
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 616
    move-result-object v0

    .line 617
    .line 618
    .line 619
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 620
    move-result-object v16

    .line 621
    .line 622
    .line 623
    :cond_11
    :goto_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 624
    move-result v0

    .line 625
    .line 626
    if-eqz v0, :cond_1b

    .line 627
    .line 628
    .line 629
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 630
    move-result-object v0

    .line 631
    .line 632
    check-cast v0, Ljava/util/Map$Entry;

    .line 633
    .line 634
    iget-object v1, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 635
    .line 636
    .line 637
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 638
    move-result-object v2

    .line 639
    .line 640
    .line 641
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 642
    move-result v1

    .line 643
    .line 644
    if-nez v1, :cond_11

    .line 645
    .line 646
    .line 647
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 648
    move-result-object v1

    .line 649
    move-object v8, v1

    .line 650
    .line 651
    check-cast v8, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->c()J

    .line 655
    move-result-wide v1

    .line 656
    .line 657
    .line 658
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 659
    move-result v3

    .line 660
    .line 661
    .line 662
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 663
    move-result v4

    .line 664
    add-int/2addr v3, v4

    .line 665
    .line 666
    .line 667
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 668
    move-result v1

    .line 669
    .line 670
    .line 671
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 672
    move-result v2

    .line 673
    add-int/2addr v1, v2

    .line 674
    .line 675
    .line 676
    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 677
    move-result-wide v1

    .line 678
    .line 679
    .line 680
    invoke-virtual {v8, v1, v2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->h(J)V

    .line 681
    .line 682
    .line 683
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;->c()Ljava/util/Map;

    .line 684
    move-result-object v1

    .line 685
    .line 686
    .line 687
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 688
    move-result-object v0

    .line 689
    .line 690
    .line 691
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    move-result-object v0

    .line 693
    .line 694
    check-cast v0, Ljava/lang/Integer;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->d()Ljava/util/List;

    .line 698
    move-result-object v1

    .line 699
    .line 700
    .line 701
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 702
    move-result v2

    .line 703
    const/4 v3, 0x0

    .line 704
    :goto_11
    const/4 v4, 0x1

    .line 705
    .line 706
    if-ge v3, v2, :cond_13

    .line 707
    .line 708
    .line 709
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 710
    move-result-object v5

    .line 711
    .line 712
    check-cast v5, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->d()J

    .line 716
    move-result-wide v6

    .line 717
    .line 718
    .line 719
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->c()J

    .line 720
    move-result-wide v19

    .line 721
    .line 722
    .line 723
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 724
    move-result v17

    .line 725
    .line 726
    .line 727
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 728
    move-result v21

    .line 729
    .line 730
    add-int v12, v17, v21

    .line 731
    .line 732
    .line 733
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 734
    move-result v6

    .line 735
    .line 736
    .line 737
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 738
    move-result v7

    .line 739
    add-int/2addr v6, v7

    .line 740
    .line 741
    .line 742
    invoke-static {v12, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 743
    move-result-wide v6

    .line 744
    .line 745
    .line 746
    invoke-direct {v9, v6, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 747
    move-result v12

    .line 748
    .line 749
    .line 750
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->c()I

    .line 751
    move-result v5

    .line 752
    add-int/2addr v12, v5

    .line 753
    .line 754
    if-lez v12, :cond_12

    .line 755
    .line 756
    .line 757
    invoke-direct {v9, v6, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->d(J)I

    .line 758
    move-result v5

    .line 759
    .line 760
    if-ge v5, v13, :cond_12

    .line 761
    move v1, v4

    .line 762
    goto :goto_12

    .line 763
    .line 764
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 765
    goto :goto_11

    .line 766
    :cond_13
    const/4 v1, 0x0

    .line 767
    .line 768
    .line 769
    :goto_12
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->d()Ljava/util/List;

    .line 770
    move-result-object v2

    .line 771
    .line 772
    .line 773
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 774
    move-result v3

    .line 775
    const/4 v5, 0x0

    .line 776
    .line 777
    :goto_13
    if-ge v5, v3, :cond_15

    .line 778
    .line 779
    .line 780
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 781
    move-result-object v6

    .line 782
    .line 783
    check-cast v6, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->b()Z

    .line 787
    move-result v6

    .line 788
    .line 789
    if-eqz v6, :cond_14

    .line 790
    move v2, v4

    .line 791
    goto :goto_14

    .line 792
    .line 793
    :cond_14
    add-int/lit8 v5, v5, 0x1

    .line 794
    goto :goto_13

    .line 795
    :cond_15
    const/4 v2, 0x0

    .line 796
    :goto_14
    xor-int/2addr v2, v4

    .line 797
    .line 798
    if-nez v1, :cond_16

    .line 799
    .line 800
    if-nez v2, :cond_1a

    .line 801
    .line 802
    :cond_16
    if-eqz v0, :cond_1a

    .line 803
    .line 804
    .line 805
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->d()Ljava/util/List;

    .line 806
    move-result-object v1

    .line 807
    .line 808
    .line 809
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 810
    move-result v1

    .line 811
    .line 812
    if-eqz v1, :cond_17

    .line 813
    goto :goto_16

    .line 814
    .line 815
    .line 816
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 817
    move-result v1

    .line 818
    .line 819
    .line 820
    invoke-static {v1}, Landroidx/compose/foundation/lazy/grid/ItemIndex;->b(I)I

    .line 821
    move-result v2

    .line 822
    const/4 v3, 0x0

    .line 823
    .line 824
    iget-boolean v1, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    .line 825
    .line 826
    if-eqz v1, :cond_18

    .line 827
    .line 828
    sget-object v1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 829
    .line 830
    .line 831
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->b()I

    .line 832
    move-result v4

    .line 833
    .line 834
    .line 835
    invoke-virtual {v1, v4}, Landroidx/compose/ui/unit/Constraints$Companion;->e(I)J

    .line 836
    move-result-wide v4

    .line 837
    goto :goto_15

    .line 838
    .line 839
    :cond_18
    sget-object v1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->b()I

    .line 843
    move-result v4

    .line 844
    .line 845
    .line 846
    invoke-virtual {v1, v4}, Landroidx/compose/ui/unit/Constraints$Companion;->d(I)J

    .line 847
    move-result-wide v4

    .line 848
    :goto_15
    const/4 v6, 0x2

    .line 849
    const/4 v7, 0x0

    .line 850
    .line 851
    move-object/from16 v1, p7

    .line 852
    .line 853
    .line 854
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;->b(Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;IIJILjava/lang/Object;)Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 855
    move-result-object v23

    .line 856
    .line 857
    .line 858
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->e()I

    .line 859
    move-result v2

    .line 860
    .line 861
    .line 862
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 863
    move-result v1

    .line 864
    .line 865
    move-object/from16 v0, p0

    .line 866
    .line 867
    move/from16 v3, v18

    .line 868
    move-wide v4, v14

    .line 869
    .line 870
    move/from16 v6, p5

    .line 871
    move v7, v13

    .line 872
    move-object v12, v8

    .line 873
    move v8, v13

    .line 874
    .line 875
    .line 876
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->b(IIIJZII)I

    .line 877
    move-result v0

    .line 878
    .line 879
    if-eqz p5, :cond_19

    .line 880
    .line 881
    sub-int v0, v13, v0

    .line 882
    .line 883
    .line 884
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->d()I

    .line 885
    move-result v1

    .line 886
    sub-int/2addr v0, v1

    .line 887
    .line 888
    :cond_19
    move/from16 v24, v0

    .line 889
    .line 890
    .line 891
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->a()I

    .line 892
    move-result v25

    .line 893
    .line 894
    const/16 v28, -0x1

    .line 895
    .line 896
    const/16 v29, -0x1

    .line 897
    .line 898
    .line 899
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->d()I

    .line 900
    move-result v30

    .line 901
    .line 902
    move/from16 v26, p2

    .line 903
    .line 904
    move/from16 v27, p3

    .line 905
    .line 906
    .line 907
    invoke-virtual/range {v23 .. v30}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->f(IIIIIII)Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 908
    move-result-object v0

    .line 909
    .line 910
    .line 911
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    invoke-direct {v9, v0, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->g(Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;Landroidx/compose/foundation/lazy/grid/ItemInfo;)V

    .line 915
    .line 916
    goto/16 :goto_10

    .line 917
    .line 918
    .line 919
    :cond_1a
    :goto_16
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 920
    .line 921
    goto/16 :goto_10

    .line 922
    .line 923
    .line 924
    :cond_1b
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;->c()Ljava/util/Map;

    .line 925
    move-result-object v0

    .line 926
    .line 927
    iput-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 928
    return-void

    .line 929
    .line 930
    :cond_1c
    move/from16 v3, p1

    .line 931
    .line 932
    move/from16 v2, p4

    .line 933
    .line 934
    add-int/lit8 v1, v1, 0x1

    .line 935
    .line 936
    goto/16 :goto_0

    .line 937
    .line 938
    .line 939
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->f()V

    .line 940
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

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
    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 12
    const/4 v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 18
    .line 19
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 20
    .line 21
    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 22
    return-void
.end method
