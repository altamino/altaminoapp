.class public final Landroidx/compose/foundation/lazy/LazyMeasuredItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyMeasuredItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyMeasuredItem.kt\nandroidx/compose/foundation/lazy/LazyMeasuredItem\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,195:1\n13536#2,2:196\n*S KotlinDebug\n*F\n+ 1 LazyMeasuredItem.kt\nandroidx/compose/foundation/lazy/LazyMeasuredItem\n*L\n72#1:196,2\n*E\n"
.end annotation


# instance fields
.field private final afterContentPadding:I

.field private final beforeContentPadding:I

.field private final crossAxisSize:I

.field private final horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

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

.field private final placeables:[Landroidx/compose/ui/layout/Placeable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reverseLayout:Z

.field private final size:I

.field private final sizeWithSpacings:I

.field private final spacing:I

.field private final verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final visualOffset:J


# direct methods
.method private constructor <init>(I[Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;IJLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->index:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->reverseLayout:Z

    iput p8, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->beforeContentPadding:I

    iput p9, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->afterContentPadding:I

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    iput p11, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->spacing:I

    iput-wide p12, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->visualOffset:J

    iput-object p14, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->key:Ljava/lang/Object;

    .line 3
    array-length p1, p2

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    :goto_0
    if-ge p3, p1, :cond_2

    aget-object p6, p2, p3

    iget-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    if-eqz p7, :cond_0

    .line 4
    invoke-virtual {p6}, Landroidx/compose/ui/layout/Placeable;->B0()I

    move-result p7

    goto :goto_1

    :cond_0
    invoke-virtual {p6}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    move-result p7

    :goto_1
    add-int/2addr p4, p7

    iget-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    if-nez p7, :cond_1

    .line 5
    invoke-virtual {p6}, Landroidx/compose/ui/layout/Placeable;->B0()I

    move-result p6

    goto :goto_2

    :cond_1
    invoke-virtual {p6}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    move-result p6

    :goto_2
    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result p5

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    iput p4, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->size:I

    iget p1, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->spacing:I

    add-int/2addr p4, p1

    iput p4, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->sizeWithSpacings:I

    iput p5, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->crossAxisSize:I

    return-void
.end method

.method public synthetic constructor <init>(I[Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;IJLjava/lang/Object;Lkotlin/jvm/internal/k;)V
    .locals 0
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;-><init>(I[Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;IJLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->crossAxisSize:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->index:I

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->size:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->sizeWithSpacings:I

    return v0
.end method

.method public final f(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;
    .locals 17
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    new-instance v10, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move/from16 v1, p3

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    move/from16 v1, p2

    .line 17
    .line 18
    :goto_0
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->reverseLayout:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    sub-int v3, v1, p1

    .line 23
    .line 24
    iget v4, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->size:I

    .line 25
    sub-int/2addr v3, v4

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    move/from16 v3, p1

    .line 29
    :goto_1
    const/4 v4, 0x0

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Lkotlin/collections/l;->R([Ljava/lang/Object;)I

    .line 37
    move-result v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v2, v4

    .line 40
    .line 41
    :goto_2
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->reverseLayout:Z

    .line 42
    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    if-ltz v2, :cond_a

    .line 46
    goto :goto_3

    .line 47
    .line 48
    :cond_3
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 49
    array-length v6, v6

    .line 50
    .line 51
    if-ge v2, v6, :cond_a

    .line 52
    .line 53
    :goto_3
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 54
    .line 55
    aget-object v14, v6, v2

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    move v5, v4

    .line 59
    goto :goto_4

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 63
    move-result v5

    .line 64
    .line 65
    :goto_4
    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    .line 66
    .line 67
    const-string v7, "Required value was null."

    .line 68
    .line 69
    if-eqz v6, :cond_6

    .line 70
    .line 71
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 72
    .line 73
    if-eqz v6, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 77
    move-result v7

    .line 78
    .line 79
    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 80
    .line 81
    move/from16 v9, p2

    .line 82
    .line 83
    .line 84
    invoke-interface {v6, v7, v9, v8}, Landroidx/compose/ui/Alignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 85
    move-result v6

    .line 86
    .line 87
    .line 88
    invoke-static {v6, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 89
    move-result-wide v6

    .line 90
    .line 91
    move/from16 v8, p3

    .line 92
    :goto_5
    move-wide v12, v6

    .line 93
    goto :goto_6

    .line 94
    .line 95
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    throw v1

    .line 104
    .line 105
    :cond_6
    move/from16 v9, p2

    .line 106
    .line 107
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 108
    .line 109
    if-eqz v6, :cond_9

    .line 110
    .line 111
    .line 112
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 113
    move-result v7

    .line 114
    .line 115
    move/from16 v8, p3

    .line 116
    .line 117
    .line 118
    invoke-interface {v6, v7, v8}, Landroidx/compose/ui/Alignment$Vertical;->a(II)I

    .line 119
    move-result v6

    .line 120
    .line 121
    .line 122
    invoke-static {v3, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 123
    move-result-wide v6

    .line 124
    goto :goto_5

    .line 125
    .line 126
    :goto_6
    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    .line 127
    .line 128
    if-eqz v6, :cond_7

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 132
    move-result v6

    .line 133
    goto :goto_7

    .line 134
    .line 135
    .line 136
    :cond_7
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 137
    move-result v6

    .line 138
    :goto_7
    add-int/2addr v3, v6

    .line 139
    .line 140
    new-instance v6, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;

    .line 141
    .line 142
    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 143
    .line 144
    aget-object v7, v7, v2

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->e()Ljava/lang/Object;

    .line 148
    move-result-object v15

    .line 149
    .line 150
    const/16 v16, 0x0

    .line 151
    move-object v11, v6

    .line 152
    .line 153
    .line 154
    invoke-direct/range {v11 .. v16}, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;-><init>(JLandroidx/compose/ui/layout/Placeable;Ljava/lang/Object;Lkotlin/jvm/internal/k;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v10, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 158
    .line 159
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->reverseLayout:Z

    .line 160
    .line 161
    if-eqz v5, :cond_8

    .line 162
    .line 163
    add-int/lit8 v2, v2, -0x1

    .line 164
    goto :goto_2

    .line 165
    .line 166
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 167
    goto :goto_2

    .line 168
    .line 169
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 173
    move-result-object v2

    .line 174
    .line 175
    .line 176
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    throw v1

    .line 178
    .line 179
    :cond_a
    new-instance v15, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 180
    .line 181
    iget v3, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->index:I

    .line 182
    .line 183
    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->key:Ljava/lang/Object;

    .line 184
    .line 185
    iget v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->size:I

    .line 186
    .line 187
    iget v7, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->sizeWithSpacings:I

    .line 188
    .line 189
    if-nez v5, :cond_b

    .line 190
    .line 191
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->beforeContentPadding:I

    .line 192
    goto :goto_8

    .line 193
    .line 194
    :cond_b
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->afterContentPadding:I

    .line 195
    :goto_8
    neg-int v8, v2

    .line 196
    .line 197
    if-nez v5, :cond_c

    .line 198
    .line 199
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->afterContentPadding:I

    .line 200
    goto :goto_9

    .line 201
    .line 202
    :cond_c
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->beforeContentPadding:I

    .line 203
    .line 204
    :goto_9
    add-int v9, v1, v2

    .line 205
    .line 206
    iget-boolean v11, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    .line 207
    .line 208
    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 209
    .line 210
    iget-wide v13, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->visualOffset:J

    .line 211
    .line 212
    const/16 v16, 0x0

    .line 213
    move-object v1, v15

    .line 214
    .line 215
    move/from16 v2, p1

    .line 216
    move v5, v6

    .line 217
    move v6, v7

    .line 218
    move v7, v8

    .line 219
    move v8, v9

    .line 220
    move v9, v11

    .line 221
    move-object v11, v12

    .line 222
    move-wide v12, v13

    .line 223
    .line 224
    move-object/from16 v14, v16

    .line 225
    .line 226
    .line 227
    invoke-direct/range {v1 .. v14}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;-><init>(IILjava/lang/Object;IIIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;JLkotlin/jvm/internal/k;)V

    .line 228
    return-object v15
.end method
