.class final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListKt;->f(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/runtime/Composer;III)Le8/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,348:1\n479#2,4:349\n484#2:358\n483#2:359\n122#3,5:353\n*S KotlinDebug\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1\n*L\n299#1:349,4\n299#1:358\n299#1:359\n299#1:353,5\n*E\n"
.end annotation


# instance fields
.field final synthetic $beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

.field final synthetic $overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field final synthetic $placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/OverscrollEffect;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p12, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 32
    .param p1    # Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-wide/from16 v13, p2

    .line 7
    .line 8
    const-string v2, "$this$null"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-static {v13, v14, v2}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->a(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 24
    .line 25
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 30
    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 37
    move-result v2

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 41
    move-result v2

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 45
    .line 46
    .line 47
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 56
    move-result v2

    .line 57
    .line 58
    :goto_1
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 63
    .line 64
    .line 65
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    .line 69
    invoke-interface {v3, v4}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 70
    move-result v3

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 74
    move-result v3

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_2
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 78
    .line 79
    .line 80
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    .line 84
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 85
    move-result v3

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 89
    move-result v3

    .line 90
    .line 91
    :goto_2
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 92
    .line 93
    .line 94
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 95
    move-result v4

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 99
    move-result v4

    .line 100
    .line 101
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 102
    .line 103
    .line 104
    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 105
    move-result v5

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v5}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 109
    move-result v5

    .line 110
    .line 111
    add-int v15, v4, v5

    .line 112
    .line 113
    add-int v12, v2, v3

    .line 114
    .line 115
    iget-boolean v6, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 116
    .line 117
    if-eqz v6, :cond_3

    .line 118
    move v7, v15

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move v7, v12

    .line 121
    .line 122
    :goto_3
    if-eqz v6, :cond_4

    .line 123
    .line 124
    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 125
    .line 126
    if-nez v8, :cond_4

    .line 127
    .line 128
    move/from16 v16, v4

    .line 129
    goto :goto_4

    .line 130
    .line 131
    :cond_4
    if-eqz v6, :cond_5

    .line 132
    .line 133
    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 134
    .line 135
    if-eqz v8, :cond_5

    .line 136
    .line 137
    move/from16 v16, v5

    .line 138
    goto :goto_4

    .line 139
    .line 140
    :cond_5
    if-nez v6, :cond_6

    .line 141
    .line 142
    iget-boolean v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 143
    .line 144
    if-nez v5, :cond_6

    .line 145
    .line 146
    move/from16 v16, v2

    .line 147
    goto :goto_4

    .line 148
    .line 149
    :cond_6
    move/from16 v16, v3

    .line 150
    .line 151
    :goto_4
    sub-int v17, v7, v16

    .line 152
    neg-int v3, v12

    .line 153
    neg-int v5, v15

    .line 154
    .line 155
    .line 156
    invoke-static {v13, v14, v3, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->i(JII)J

    .line 157
    move-result-wide v27

    .line 158
    .line 159
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 160
    .line 161
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/lazy/LazyListState;->C(Landroidx/compose/foundation/lazy/LazyListItemProvider;)V

    .line 165
    .line 166
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v0}, Landroidx/compose/foundation/lazy/LazyListState;->x(Landroidx/compose/ui/unit/Density;)V

    .line 170
    .line 171
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 172
    .line 173
    .line 174
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->e()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 175
    move-result-object v3

    .line 176
    .line 177
    .line 178
    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 179
    move-result v5

    .line 180
    .line 181
    .line 182
    invoke-interface {v0, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->j(I)F

    .line 183
    move-result v5

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->b(F)V

    .line 187
    .line 188
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 189
    .line 190
    .line 191
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->e()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 192
    move-result-object v3

    .line 193
    .line 194
    .line 195
    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 196
    move-result v5

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->j(I)F

    .line 200
    move-result v5

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->a(F)V

    .line 204
    .line 205
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 206
    .line 207
    const-string v5, "Required value was null."

    .line 208
    .line 209
    if-eqz v3, :cond_8

    .line 210
    .line 211
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 212
    .line 213
    if-eqz v3, :cond_7

    .line 214
    .line 215
    .line 216
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->a()F

    .line 217
    move-result v3

    .line 218
    goto :goto_5

    .line 219
    .line 220
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 224
    move-result-object v2

    .line 225
    .line 226
    .line 227
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 228
    throw v0

    .line 229
    .line 230
    :cond_8
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 231
    .line 232
    if-eqz v3, :cond_e

    .line 233
    .line 234
    .line 235
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->a()F

    .line 236
    move-result v3

    .line 237
    .line 238
    .line 239
    :goto_5
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 240
    move-result v5

    .line 241
    .line 242
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 243
    .line 244
    .line 245
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->f()I

    .line 246
    move-result v23

    .line 247
    .line 248
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 249
    .line 250
    if-eqz v3, :cond_9

    .line 251
    .line 252
    .line 253
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 254
    move-result v3

    .line 255
    sub-int/2addr v3, v15

    .line 256
    .line 257
    :goto_6
    move/from16 v29, v3

    .line 258
    goto :goto_7

    .line 259
    .line 260
    .line 261
    :cond_9
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 262
    move-result v3

    .line 263
    sub-int/2addr v3, v12

    .line 264
    goto :goto_6

    .line 265
    .line 266
    :goto_7
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 267
    .line 268
    if-eqz v3, :cond_d

    .line 269
    .line 270
    if-lez v29, :cond_a

    .line 271
    goto :goto_a

    .line 272
    .line 273
    :cond_a
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 274
    .line 275
    if-eqz v3, :cond_b

    .line 276
    goto :goto_8

    .line 277
    .line 278
    :cond_b
    add-int v2, v2, v29

    .line 279
    .line 280
    :goto_8
    if-eqz v3, :cond_c

    .line 281
    .line 282
    add-int v4, v4, v29

    .line 283
    .line 284
    .line 285
    :cond_c
    invoke-static {v2, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 286
    move-result-wide v2

    .line 287
    .line 288
    :goto_9
    move-wide/from16 v18, v2

    .line 289
    goto :goto_b

    .line 290
    .line 291
    .line 292
    :cond_d
    :goto_a
    invoke-static {v2, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 293
    move-result-wide v2

    .line 294
    goto :goto_9

    .line 295
    .line 296
    :goto_b
    new-instance v30, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;

    .line 297
    .line 298
    iget-boolean v11, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 299
    .line 300
    iget-object v10, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 301
    .line 302
    new-instance v20, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    .line 303
    .line 304
    iget-object v7, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 305
    .line 306
    iget-object v8, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 307
    .line 308
    iget-boolean v9, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 309
    .line 310
    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 311
    .line 312
    move-object/from16 v2, v20

    .line 313
    .line 314
    move/from16 v3, v23

    .line 315
    move v4, v5

    .line 316
    .line 317
    move-object/from16 v5, p1

    .line 318
    .line 319
    move-object/from16 v21, v6

    .line 320
    move v6, v11

    .line 321
    .line 322
    move-object/from16 v22, v10

    .line 323
    .line 324
    move/from16 v10, v16

    .line 325
    .line 326
    move/from16 v24, v11

    .line 327
    .line 328
    move/from16 v11, v17

    .line 329
    .line 330
    move/from16 v31, v12

    .line 331
    .line 332
    move-object/from16 v12, v21

    .line 333
    .line 334
    move-wide/from16 v13, v18

    .line 335
    .line 336
    .line 337
    invoke-direct/range {v2 .. v14}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(IILandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;J)V

    .line 338
    const/4 v9, 0x0

    .line 339
    .line 340
    move-object/from16 v2, v30

    .line 341
    .line 342
    move-wide/from16 v3, v27

    .line 343
    .line 344
    move/from16 v5, v24

    .line 345
    .line 346
    move-object/from16 v6, v22

    .line 347
    .line 348
    move-object/from16 v7, p1

    .line 349
    .line 350
    move-object/from16 v8, v20

    .line 351
    .line 352
    .line 353
    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/MeasuredItemFactory;Lkotlin/jvm/internal/k;)V

    .line 354
    .line 355
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->b()J

    .line 359
    move-result-wide v3

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/lazy/LazyListState;->z(J)V

    .line 363
    .line 364
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 365
    .line 366
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 370
    move-result-object v2

    .line 371
    .line 372
    .line 373
    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->k()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 374
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .line 376
    .line 377
    :try_start_1
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->j()I

    .line 378
    move-result v5

    .line 379
    .line 380
    .line 381
    invoke-static {v5}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    .line 382
    move-result v13

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->k()I

    .line 386
    move-result v14

    .line 387
    .line 388
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 389
    .line 390
    .line 391
    :try_start_2
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 395
    .line 396
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->s()F

    .line 400
    move-result v2

    .line 401
    move v7, v15

    .line 402
    move v15, v2

    .line 403
    .line 404
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    .line 405
    .line 406
    move/from16 v18, v2

    .line 407
    .line 408
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 409
    .line 410
    .line 411
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->g()Ljava/util/List;

    .line 412
    move-result-object v19

    .line 413
    .line 414
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 415
    .line 416
    move-object/from16 v20, v2

    .line 417
    .line 418
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 419
    .line 420
    move-object/from16 v21, v2

    .line 421
    .line 422
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    .line 423
    .line 424
    move/from16 v22, v2

    .line 425
    .line 426
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 427
    .line 428
    move-object/from16 v24, v2

    .line 429
    .line 430
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 431
    .line 432
    move-object/from16 v25, v2

    .line 433
    .line 434
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$2;

    .line 435
    .line 436
    move-object/from16 v26, v2

    .line 437
    .line 438
    move-object/from16 v3, p1

    .line 439
    .line 440
    move-wide/from16 v4, p2

    .line 441
    .line 442
    move/from16 v6, v31

    .line 443
    .line 444
    .line 445
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    .line 446
    .line 447
    move/from16 v8, v23

    .line 448
    .line 449
    move-object/from16 v9, v30

    .line 450
    .line 451
    move/from16 v10, v29

    .line 452
    .line 453
    move/from16 v11, v16

    .line 454
    .line 455
    move/from16 v12, v17

    .line 456
    .line 457
    move-wide/from16 v16, v27

    .line 458
    .line 459
    move-object/from16 v23, p1

    .line 460
    .line 461
    .line 462
    invoke-static/range {v8 .. v26}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->c(ILandroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Le8/q;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 463
    move-result-object v0

    .line 464
    .line 465
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 466
    .line 467
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v0}, Landroidx/compose/foundation/lazy/LazyListState;->f(Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 471
    .line 472
    .line 473
    invoke-static {v3, v0}, Landroidx/compose/foundation/lazy/LazyListKt;->d(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 474
    return-object v0

    .line 475
    :catchall_0
    move-exception v0

    .line 476
    goto :goto_c

    .line 477
    :catchall_1
    move-exception v0

    .line 478
    .line 479
    .line 480
    :try_start_3
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 481
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 482
    .line 483
    .line 484
    :goto_c
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 485
    throw v0

    .line 486
    .line 487
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 491
    move-result-object v2

    .line 492
    .line 493
    .line 494
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 495
    throw v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->t()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
