.class public final Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyMeasuredItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyMeasuredItem.kt\nandroidx/compose/foundation/lazy/grid/LazyMeasuredItem\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,229:1\n13536#2,2:230\n*S KotlinDebug\n*F\n+ 1 LazyMeasuredItem.kt\nandroidx/compose/foundation/lazy/grid/LazyMeasuredItem\n*L\n65#1:230,2\n*E\n"
.end annotation


# instance fields
.field private final afterContentPadding:I

.field private final beforeContentPadding:I

.field private final crossAxisSize:I

.field private final index:I

.field private final isVertical:Z

.field private final key:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainAxisSize:I

.field private final mainAxisSizeWithSpacings:I

.field private final mainAxisSpacing:I

.field private final placeables:[Landroidx/compose/ui/layout/Placeable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reverseLayout:Z

.field private final visualOffset:J


# direct methods
.method private constructor <init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;II[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->index:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->key:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSpacing:I

    iput-boolean p6, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput p8, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->beforeContentPadding:I

    iput p9, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->afterContentPadding:I

    iput-object p10, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    iput-wide p12, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->visualOffset:J

    .line 3
    array-length p1, p10

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object p4, p10, p2

    iget-boolean p5, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    if-eqz p5, :cond_0

    .line 4
    invoke-virtual {p4}, Landroidx/compose/ui/layout/Placeable;->B0()I

    move-result p4

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    move-result p4

    :goto_1
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSpacing:I

    add-int/2addr p3, p1

    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSizeWithSpacings:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;II[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;JLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;-><init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;II[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;J)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->index:I

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSizeWithSpacings:I

    return v0
.end method

.method public final f(IIIIIII)Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;
    .locals 23
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p2

    .line 7
    .line 8
    new-instance v14, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    move/from16 v4, p4

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    move/from16 v4, p3

    .line 21
    .line 22
    :goto_0
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    sub-int v5, v4, v1

    .line 27
    .line 28
    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    .line 29
    sub-int/2addr v5, v6

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v5, v1

    .line 32
    .line 33
    :goto_1
    if-eqz v3, :cond_2

    .line 34
    .line 35
    move/from16 v6, p3

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_2
    move/from16 v6, p4

    .line 39
    .line 40
    :goto_2
    if-eqz v3, :cond_3

    .line 41
    .line 42
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 43
    .line 44
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 45
    .line 46
    if-ne v7, v8, :cond_3

    .line 47
    sub-int/2addr v6, v2

    .line 48
    .line 49
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    .line 50
    sub-int/2addr v6, v7

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move v6, v2

    .line 53
    .line 54
    :goto_3
    if-eqz v3, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-static {v6, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 58
    move-result-wide v5

    .line 59
    goto :goto_4

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 63
    move-result-wide v5

    .line 64
    .line 65
    :goto_4
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    .line 66
    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Lkotlin/collections/l;->R([Ljava/lang/Object;)I

    .line 73
    move-result v3

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    const/4 v3, 0x0

    .line 76
    .line 77
    :goto_5
    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    .line 78
    .line 79
    if-eqz v7, :cond_6

    .line 80
    .line 81
    if-ltz v3, :cond_9

    .line 82
    goto :goto_6

    .line 83
    .line 84
    :cond_6
    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 85
    array-length v8, v8

    .line 86
    .line 87
    if-ge v3, v8, :cond_9

    .line 88
    .line 89
    :goto_6
    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 90
    .line 91
    aget-object v10, v8, v3

    .line 92
    .line 93
    if-eqz v7, :cond_7

    .line 94
    const/4 v15, 0x0

    .line 95
    goto :goto_7

    .line 96
    .line 97
    .line 98
    :cond_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 99
    move-result v7

    .line 100
    move v15, v7

    .line 101
    .line 102
    :goto_7
    new-instance v12, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;

    .line 103
    .line 104
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 105
    .line 106
    aget-object v7, v7, v3

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->e()Ljava/lang/Object;

    .line 110
    move-result-object v11

    .line 111
    .line 112
    const/16 v16, 0x0

    .line 113
    move-object v7, v12

    .line 114
    move-wide v8, v5

    .line 115
    move-object v13, v12

    .line 116
    .line 117
    move-object/from16 v12, v16

    .line 118
    .line 119
    .line 120
    invoke-direct/range {v7 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;-><init>(JLandroidx/compose/ui/layout/Placeable;Ljava/lang/Object;Lkotlin/jvm/internal/k;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v14, v15, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 124
    .line 125
    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    .line 126
    .line 127
    if-eqz v7, :cond_8

    .line 128
    .line 129
    add-int/lit8 v3, v3, -0x1

    .line 130
    goto :goto_5

    .line 131
    .line 132
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 133
    goto :goto_5

    .line 134
    .line 135
    :cond_9
    new-instance v22, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 136
    .line 137
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    .line 138
    .line 139
    if-eqz v3, :cond_a

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 143
    move-result-wide v1

    .line 144
    :goto_8
    move-wide v2, v1

    .line 145
    goto :goto_9

    .line 146
    .line 147
    .line 148
    :cond_a
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 149
    move-result-wide v1

    .line 150
    goto :goto_8

    .line 151
    .line 152
    :goto_9
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->index:I

    .line 153
    .line 154
    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->key:Ljava/lang/Object;

    .line 155
    .line 156
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    .line 157
    .line 158
    if-eqz v1, :cond_b

    .line 159
    .line 160
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    .line 161
    .line 162
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v9}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 166
    move-result-wide v9

    .line 167
    :goto_a
    move-wide v10, v9

    .line 168
    goto :goto_b

    .line 169
    .line 170
    :cond_b
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    .line 171
    .line 172
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    .line 173
    .line 174
    .line 175
    invoke-static {v1, v9}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 176
    move-result-wide v9

    .line 177
    goto :goto_a

    .line 178
    .line 179
    :goto_b
    iget v13, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSpacing:I

    .line 180
    .line 181
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    .line 182
    .line 183
    if-nez v1, :cond_c

    .line 184
    .line 185
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->beforeContentPadding:I

    .line 186
    goto :goto_c

    .line 187
    .line 188
    :cond_c
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->afterContentPadding:I

    .line 189
    :goto_c
    neg-int v12, v9

    .line 190
    .line 191
    if-nez v1, :cond_d

    .line 192
    .line 193
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->afterContentPadding:I

    .line 194
    goto :goto_d

    .line 195
    .line 196
    :cond_d
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->beforeContentPadding:I

    .line 197
    .line 198
    :goto_d
    add-int v15, v4, v1

    .line 199
    .line 200
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    .line 201
    .line 202
    move/from16 v16, v1

    .line 203
    .line 204
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 205
    .line 206
    move-object/from16 v18, v1

    .line 207
    .line 208
    move-object/from16 v17, v14

    .line 209
    .line 210
    move/from16 p1, v15

    .line 211
    .line 212
    iget-wide v14, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->visualOffset:J

    .line 213
    .line 214
    move-wide/from16 v19, v14

    .line 215
    .line 216
    const/16 v21, 0x0

    .line 217
    .line 218
    move-object/from16 v1, v22

    .line 219
    move-wide v4, v5

    .line 220
    move v6, v7

    .line 221
    move-object v7, v8

    .line 222
    .line 223
    move/from16 v8, p5

    .line 224
    .line 225
    move/from16 v9, p6

    .line 226
    move v14, v12

    .line 227
    .line 228
    move/from16 v12, p7

    .line 229
    .line 230
    move-object/from16 v15, v17

    .line 231
    .line 232
    move/from16 v15, p1

    .line 233
    .line 234
    .line 235
    invoke-direct/range {v1 .. v21}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;-><init>(JJILjava/lang/Object;IIJIIIIZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;JLkotlin/jvm/internal/k;)V

    .line 236
    return-object v22
.end method
