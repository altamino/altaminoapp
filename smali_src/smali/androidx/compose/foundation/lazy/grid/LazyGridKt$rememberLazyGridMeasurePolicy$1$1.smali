.class final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridKt;->f(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/OverscrollEffect;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/runtime/Composer;II)Le8/p;
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
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGrid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,384:1\n155#2:385\n155#2:386\n479#3,4:387\n484#3:396\n483#3:397\n122#4,5:391\n*S KotlinDebug\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1\n*L\n244#1:385\n246#1:386\n327#1:387,4\n327#1:396\n327#1:397\n327#1:391,5\n*E\n"
.end annotation


# instance fields
.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

.field final synthetic $overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field final synthetic $placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

.field final synthetic $reverseLayout:Z

.field final synthetic $slotSizesSums:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Le8/p;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/OverscrollEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
            "Landroidx/compose/foundation/OverscrollEffect;",
            ")V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slotSizesSums:Le8/p;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 40
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
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

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
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    iget-object v4, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    iget-object v5, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

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
    add-int v11, v4, v5

    .line 112
    .line 113
    add-int v15, v2, v3

    .line 114
    .line 115
    iget-boolean v6, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 116
    .line 117
    if-eqz v6, :cond_3

    .line 118
    move v7, v11

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move v7, v15

    .line 121
    .line 122
    :goto_3
    if-eqz v6, :cond_4

    .line 123
    .line 124
    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

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
    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

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
    iget-boolean v5, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

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
    sub-int v18, v7, v16

    .line 152
    neg-int v3, v15

    .line 153
    neg-int v5, v11

    .line 154
    .line 155
    .line 156
    invoke-static {v13, v14, v3, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->i(JII)J

    .line 157
    move-result-wide v27

    .line 158
    .line 159
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 160
    .line 161
    iget-object v5, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->F(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)V

    .line 165
    .line 166
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 167
    .line 168
    .line 169
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->h()Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 170
    move-result-object v12

    .line 171
    .line 172
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slotSizesSums:Le8/p;

    .line 173
    .line 174
    .line 175
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->b(J)Landroidx/compose/ui/unit/Constraints;

    .line 176
    move-result-object v5

    .line 177
    .line 178
    .line 179
    invoke-interface {v3, v0, v5}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-result-object v3

    .line 181
    move-object v9, v3

    .line 182
    .line 183
    check-cast v9, Ljava/util/List;

    .line 184
    .line 185
    .line 186
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 187
    move-result v3

    .line 188
    .line 189
    .line 190
    invoke-virtual {v12, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->g(I)V

    .line 191
    .line 192
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->y(Landroidx/compose/ui/unit/Density;)V

    .line 196
    .line 197
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 198
    .line 199
    .line 200
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 201
    move-result v5

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->C(I)V

    .line 205
    .line 206
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 207
    .line 208
    const-string v5, "Required value was null."

    .line 209
    .line 210
    if-eqz v3, :cond_8

    .line 211
    .line 212
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 213
    .line 214
    if-eqz v3, :cond_7

    .line 215
    .line 216
    .line 217
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->a()F

    .line 218
    move-result v3

    .line 219
    goto :goto_5

    .line 220
    .line 221
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 225
    move-result-object v2

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    throw v0

    .line 230
    .line 231
    :cond_8
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 232
    .line 233
    if-eqz v3, :cond_13

    .line 234
    .line 235
    .line 236
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->a()F

    .line 237
    move-result v3

    .line 238
    .line 239
    .line 240
    :goto_5
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 241
    move-result v10

    .line 242
    .line 243
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 244
    const/4 v8, 0x0

    .line 245
    .line 246
    if-eqz v3, :cond_a

    .line 247
    .line 248
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 249
    .line 250
    if-eqz v3, :cond_9

    .line 251
    .line 252
    .line 253
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->a()F

    .line 254
    move-result v3

    .line 255
    goto :goto_6

    .line 256
    :cond_9
    int-to-float v3, v8

    .line 257
    .line 258
    .line 259
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 260
    move-result v3

    .line 261
    goto :goto_6

    .line 262
    .line 263
    :cond_a
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 264
    .line 265
    if-eqz v3, :cond_b

    .line 266
    .line 267
    .line 268
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->a()F

    .line 269
    move-result v3

    .line 270
    goto :goto_6

    .line 271
    :cond_b
    int-to-float v3, v8

    .line 272
    .line 273
    .line 274
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 275
    move-result v3

    .line 276
    .line 277
    .line 278
    :goto_6
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 279
    move-result v7

    .line 280
    .line 281
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 282
    .line 283
    .line 284
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->f()I

    .line 285
    move-result v6

    .line 286
    .line 287
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 288
    .line 289
    if-eqz v3, :cond_c

    .line 290
    .line 291
    .line 292
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 293
    move-result v3

    .line 294
    sub-int/2addr v3, v11

    .line 295
    .line 296
    :goto_7
    move/from16 v19, v3

    .line 297
    goto :goto_8

    .line 298
    .line 299
    .line 300
    :cond_c
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 301
    move-result v3

    .line 302
    sub-int/2addr v3, v15

    .line 303
    goto :goto_7

    .line 304
    .line 305
    :goto_8
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    .line 306
    .line 307
    if-eqz v3, :cond_10

    .line 308
    .line 309
    if-lez v19, :cond_d

    .line 310
    goto :goto_b

    .line 311
    .line 312
    :cond_d
    iget-boolean v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 313
    .line 314
    if-eqz v3, :cond_e

    .line 315
    goto :goto_9

    .line 316
    .line 317
    :cond_e
    add-int v2, v2, v19

    .line 318
    .line 319
    :goto_9
    if-eqz v3, :cond_f

    .line 320
    .line 321
    add-int v4, v4, v19

    .line 322
    .line 323
    .line 324
    :cond_f
    invoke-static {v2, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 325
    move-result-wide v2

    .line 326
    .line 327
    :goto_a
    move-wide/from16 v20, v2

    .line 328
    goto :goto_c

    .line 329
    .line 330
    .line 331
    :cond_10
    :goto_b
    invoke-static {v2, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 332
    move-result-wide v2

    .line 333
    goto :goto_a

    .line 334
    .line 335
    :goto_c
    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;

    .line 336
    .line 337
    iget-object v4, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 338
    .line 339
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    .line 340
    .line 341
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 342
    .line 343
    iget-boolean v8, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    .line 344
    .line 345
    move-object/from16 v22, v9

    .line 346
    .line 347
    iget-object v9, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 348
    .line 349
    move/from16 v23, v2

    .line 350
    move-object v2, v3

    .line 351
    move-object v13, v3

    .line 352
    .line 353
    move-object/from16 v3, p1

    .line 354
    move-object v14, v4

    .line 355
    .line 356
    move/from16 v4, v23

    .line 357
    .line 358
    move/from16 v24, v11

    .line 359
    move-object v11, v5

    .line 360
    move v5, v8

    .line 361
    move v8, v6

    .line 362
    .line 363
    move/from16 v6, v16

    .line 364
    .line 365
    move/from16 v38, v15

    .line 366
    move v15, v7

    .line 367
    .line 368
    move/from16 v7, v18

    .line 369
    .line 370
    move/from16 v39, v8

    .line 371
    .line 372
    const/16 v17, 0x0

    .line 373
    move-object v8, v9

    .line 374
    .line 375
    move-object/from16 v23, v12

    .line 376
    move v12, v10

    .line 377
    .line 378
    move-wide/from16 v9, v20

    .line 379
    .line 380
    .line 381
    invoke-direct/range {v2 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ZZIILandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;J)V

    .line 382
    .line 383
    .line 384
    invoke-direct {v11, v14, v0, v12, v13}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/lazy/grid/MeasuredItemFactory;)V

    .line 385
    .line 386
    new-instance v9, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;

    .line 387
    .line 388
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 389
    .line 390
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    .line 391
    .line 392
    move-object/from16 v4, v22

    .line 393
    .line 394
    .line 395
    invoke-direct {v3, v2, v4, v0, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;-><init>(ZLjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;I)V

    .line 396
    .line 397
    move-object/from16 v29, v9

    .line 398
    .line 399
    move/from16 v30, v2

    .line 400
    .line 401
    move-object/from16 v31, v4

    .line 402
    .line 403
    move/from16 v32, v15

    .line 404
    .line 405
    move/from16 v33, v39

    .line 406
    .line 407
    move/from16 v34, v12

    .line 408
    .line 409
    move-object/from16 v35, v11

    .line 410
    .line 411
    move-object/from16 v36, v23

    .line 412
    .line 413
    move-object/from16 v37, v3

    .line 414
    .line 415
    .line 416
    invoke-direct/range {v29 .. v37}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;-><init>(ZLjava/util/List;IIILandroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;)V

    .line 417
    .line 418
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 419
    .line 420
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1;

    .line 421
    .line 422
    move-object/from16 v5, v23

    .line 423
    .line 424
    .line 425
    invoke-direct {v3, v5, v9}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->A(Le8/l;)V

    .line 429
    .line 430
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 431
    .line 432
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 436
    move-result-object v2

    .line 437
    .line 438
    .line 439
    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->k()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 440
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 441
    .line 442
    .line 443
    :try_start_1
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->j()I

    .line 444
    move-result v7

    .line 445
    .line 446
    move/from16 v8, v39

    .line 447
    .line 448
    if-lt v7, v8, :cond_12

    .line 449
    .line 450
    if-gtz v8, :cond_11

    .line 451
    goto :goto_d

    .line 452
    .line 453
    :cond_11
    add-int/lit8 v3, v8, -0x1

    .line 454
    .line 455
    .line 456
    invoke-virtual {v5, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->d(I)I

    .line 457
    move-result v3

    .line 458
    move v15, v3

    .line 459
    .line 460
    move/from16 v29, v17

    .line 461
    goto :goto_e

    .line 462
    :catchall_0
    move-exception v0

    .line 463
    goto :goto_f

    .line 464
    .line 465
    .line 466
    :cond_12
    :goto_d
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->j()I

    .line 467
    move-result v7

    .line 468
    .line 469
    .line 470
    invoke-virtual {v5, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->d(I)I

    .line 471
    move-result v5

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->k()I

    .line 475
    move-result v3

    .line 476
    .line 477
    move/from16 v29, v3

    .line 478
    move v15, v5

    .line 479
    .line 480
    :goto_e
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    .line 482
    .line 483
    :try_start_2
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 487
    .line 488
    .line 489
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 490
    move-result v12

    .line 491
    .line 492
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->s()F

    .line 496
    move-result v17

    .line 497
    .line 498
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    .line 499
    .line 500
    move/from16 v20, v2

    .line 501
    .line 502
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 503
    .line 504
    move-object/from16 v21, v2

    .line 505
    .line 506
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 507
    .line 508
    move-object/from16 v22, v2

    .line 509
    .line 510
    iget-boolean v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    .line 511
    .line 512
    move/from16 v23, v2

    .line 513
    .line 514
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 515
    .line 516
    move-object/from16 v25, v2

    .line 517
    .line 518
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$3;

    .line 519
    .line 520
    move-object/from16 v26, v2

    .line 521
    .line 522
    move-object/from16 v3, p1

    .line 523
    .line 524
    move-wide/from16 v4, p2

    .line 525
    .line 526
    move/from16 v6, v38

    .line 527
    .line 528
    move/from16 v7, v24

    .line 529
    .line 530
    .line 531
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    .line 532
    move-object v10, v11

    .line 533
    .line 534
    move/from16 v11, v19

    .line 535
    .line 536
    move/from16 v13, v16

    .line 537
    .line 538
    move/from16 v14, v18

    .line 539
    .line 540
    move/from16 v16, v29

    .line 541
    .line 542
    move-wide/from16 v18, v27

    .line 543
    .line 544
    move-object/from16 v24, p1

    .line 545
    .line 546
    .line 547
    invoke-static/range {v8 .. v26}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->c(ILandroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Le8/q;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 548
    move-result-object v0

    .line 549
    .line 550
    iget-object v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 551
    .line 552
    iget-object v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->f(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    .line 556
    .line 557
    .line 558
    invoke-static {v3, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->d(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    .line 559
    return-object v0

    .line 560
    :catchall_1
    move-exception v0

    .line 561
    goto :goto_10

    .line 562
    .line 563
    .line 564
    :goto_f
    :try_start_3
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 565
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 566
    .line 567
    .line 568
    :goto_10
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 569
    throw v0

    .line 570
    .line 571
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 575
    move-result-object v2

    .line 576
    .line 577
    .line 578
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 579
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
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
