.class public final Landroidx/compose/material/DragGestureDetectorCopyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragGestureDetectorCopy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragGestureDetectorCopy.kt\nandroidx/compose/material/DragGestureDetectorCopyKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,114:1\n53#1,10:115\n63#1,4:134\n67#1,29:145\n93#2,2:125\n32#2,6:127\n95#2:133\n32#2,6:138\n95#2:144\n93#2,2:174\n32#2,6:176\n95#2:182\n93#2,2:183\n32#2,6:185\n95#2:191\n93#2,2:192\n32#2,6:194\n95#2:200\n165#3:201\n155#3:202\n82#4:203\n*S KotlinDebug\n*F\n+ 1 DragGestureDetectorCopy.kt\nandroidx/compose/material/DragGestureDetectorCopyKt\n*L\n40#1:115,10\n40#1:134,4\n40#1:145,29\n40#1:125,2\n40#1:127,6\n40#1:133\n40#1:138,6\n40#1:144\n62#1:174,2\n62#1:176,6\n62#1:182\n66#1:183,2\n66#1:185,6\n66#1:191\n103#1:192,2\n103#1:194,6\n103#1:200\n105#1:201\n106#1:202\n107#1:203\n*E\n"
.end annotation


# static fields
.field private static final defaultTouchSlop:F

.field private static final mouseSlop:F

.field private static final mouseToTouchSlopRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-wide/high16 v0, 0x3fc0000000000000L    # 0.125

    .line 3
    double-to-float v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 7
    move-result v0

    .line 8
    .line 9
    sput v0, Landroidx/compose/material/DragGestureDetectorCopyKt;->mouseSlop:F

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    int-to-float v1, v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 16
    move-result v1

    .line 17
    .line 18
    sput v1, Landroidx/compose/material/DragGestureDetectorCopyKt;->defaultTouchSlop:F

    .line 19
    div-float/2addr v0, v1

    .line 20
    .line 21
    sput v0, Landroidx/compose/material/DragGestureDetectorCopyKt;->mouseToTouchSlopRatio:F

    .line 22
    return-void
.end method

.method public static final a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 19
    .param p0    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "JI",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-wide/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v2, p5

    .line 5
    .line 6
    instance-of v3, v2, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    move-object v3, v2

    .line 10
    .line 11
    check-cast v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;

    .line 12
    .line 13
    iget v4, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 14
    .line 15
    const/high16 v5, -0x80000000

    .line 16
    .line 17
    and-int v6, v4, v5

    .line 18
    .line 19
    if-eqz v6, :cond_0

    .line 20
    sub-int/2addr v4, v5

    .line 21
    .line 22
    iput v4, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v2}, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;-><init>(Lkotlin/coroutines/d;)V

    .line 29
    .line 30
    :goto_0
    iget-object v2, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->result:Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    iget v5, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 37
    const/4 v7, 0x2

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    if-eq v5, v8, :cond_2

    .line 44
    .line 45
    if-ne v5, v7, :cond_1

    .line 46
    .line 47
    iget v0, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 48
    .line 49
    iget v1, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 50
    .line 51
    iget-object v5, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 54
    .line 55
    iget-object v10, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v10, Lkotlin/jvm/internal/o0;

    .line 58
    .line 59
    iget-object v11, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 62
    .line 63
    iget-object v12, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v12, Le8/p;

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 69
    move v2, v0

    .line 70
    move-object v0, v11

    .line 71
    move-object v11, v10

    .line 72
    move-object v10, v4

    .line 73
    move-object v4, v3

    .line 74
    move v3, v1

    .line 75
    move-object v1, v12

    .line 76
    .line 77
    goto/16 :goto_9

    .line 78
    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    throw v0

    .line 86
    .line 87
    :cond_2
    iget v0, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 88
    .line 89
    iget v1, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 90
    .line 91
    iget-object v5, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v5, Lkotlin/jvm/internal/o0;

    .line 94
    .line 95
    iget-object v10, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 98
    .line 99
    iget-object v11, v3, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v11, Le8/p;

    .line 102
    .line 103
    .line 104
    invoke-static {v2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 105
    .line 106
    move-object/from16 v18, v3

    .line 107
    move v3, v0

    .line 108
    move-object v0, v10

    .line 109
    move-object v10, v4

    .line 110
    move v4, v1

    .line 111
    move-object v1, v11

    .line 112
    move-object v11, v5

    .line 113
    .line 114
    move-object/from16 v5, v18

    .line 115
    goto :goto_2

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-static {v2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->v0()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    .line 125
    invoke-static {v2, v0, v1}, Landroidx/compose/material/DragGestureDetectorCopyKt;->b(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 126
    move-result v2

    .line 127
    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    goto/16 :goto_a

    .line 131
    .line 132
    .line 133
    :cond_4
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 134
    move-result-object v2

    .line 135
    .line 136
    move/from16 v5, p3

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v5}, Landroidx/compose/material/DragGestureDetectorCopyKt;->c(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 140
    move-result v2

    .line 141
    .line 142
    new-instance v5, Lkotlin/jvm/internal/o0;

    .line 143
    .line 144
    .line 145
    invoke-direct {v5}, Lkotlin/jvm/internal/o0;-><init>()V

    .line 146
    .line 147
    iput-wide v0, v5, Lkotlin/jvm/internal/o0;->element:J

    .line 148
    .line 149
    move-object/from16 v0, p0

    .line 150
    .line 151
    move-object/from16 v1, p4

    .line 152
    move-object v10, v5

    .line 153
    move-object v5, v4

    .line 154
    move-object v4, v3

    .line 155
    move v3, v2

    .line 156
    const/4 v2, 0x0

    .line 157
    .line 158
    :goto_1
    iput-object v1, v4, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object v0, v4, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object v10, v4, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object v9, v4, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 165
    .line 166
    iput v3, v4, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 167
    .line 168
    iput v2, v4, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 169
    .line 170
    iput v8, v4, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v9, v4, v8, v9}, Landroidx/compose/ui/input/pointer/b;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 174
    move-result-object v11

    .line 175
    .line 176
    if-ne v11, v5, :cond_5

    .line 177
    return-object v5

    .line 178
    .line 179
    :cond_5
    move/from16 v18, v3

    .line 180
    move v3, v2

    .line 181
    move-object v2, v11

    .line 182
    move-object v11, v10

    .line 183
    move-object v10, v5

    .line 184
    move-object v5, v4

    .line 185
    .line 186
    move/from16 v4, v18

    .line 187
    .line 188
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 192
    move-result-object v12

    .line 193
    .line 194
    .line 195
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 196
    move-result v13

    .line 197
    const/4 v14, 0x0

    .line 198
    move v15, v14

    .line 199
    .line 200
    :goto_3
    if-ge v15, v13, :cond_7

    .line 201
    .line 202
    .line 203
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    move-result-object v16

    .line 205
    .line 206
    move-object/from16 v17, v16

    .line 207
    .line 208
    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 212
    move-result-wide v8

    .line 213
    .line 214
    iget-wide v6, v11, Lkotlin/jvm/internal/o0;->element:J

    .line 215
    .line 216
    .line 217
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->d(JJ)Z

    .line 218
    move-result v6

    .line 219
    .line 220
    if-eqz v6, :cond_6

    .line 221
    goto :goto_4

    .line 222
    .line 223
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 224
    const/4 v7, 0x2

    .line 225
    const/4 v8, 0x1

    .line 226
    const/4 v9, 0x0

    .line 227
    goto :goto_3

    .line 228
    .line 229
    :cond_7
    const/16 v16, 0x0

    .line 230
    .line 231
    .line 232
    :goto_4
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 233
    .line 234
    move-object/from16 v6, v16

    .line 235
    .line 236
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->m()Z

    .line 240
    move-result v7

    .line 241
    .line 242
    if-eqz v7, :cond_8

    .line 243
    :goto_5
    const/4 v9, 0x0

    .line 244
    .line 245
    goto/16 :goto_a

    .line 246
    .line 247
    .line 248
    :cond_8
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 249
    move-result v7

    .line 250
    .line 251
    if-eqz v7, :cond_c

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    .line 258
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 259
    move-result v6

    .line 260
    .line 261
    :goto_6
    if-ge v14, v6, :cond_a

    .line 262
    .line 263
    .line 264
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 265
    move-result-object v7

    .line 266
    move-object v8, v7

    .line 267
    .line 268
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 272
    move-result v8

    .line 273
    .line 274
    if-eqz v8, :cond_9

    .line 275
    goto :goto_7

    .line 276
    .line 277
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 278
    goto :goto_6

    .line 279
    :cond_a
    const/4 v7, 0x0

    .line 280
    .line 281
    :goto_7
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 282
    .line 283
    if-nez v7, :cond_b

    .line 284
    goto :goto_5

    .line 285
    .line 286
    .line 287
    :cond_b
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 288
    move-result-wide v6

    .line 289
    .line 290
    iput-wide v6, v11, Lkotlin/jvm/internal/o0;->element:J

    .line 291
    move v2, v3

    .line 292
    move v3, v4

    .line 293
    move-object v4, v5

    .line 294
    move-object v5, v10

    .line 295
    move-object v10, v11

    .line 296
    const/4 v7, 0x2

    .line 297
    :goto_8
    const/4 v8, 0x1

    .line 298
    const/4 v9, 0x0

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    .line 303
    :cond_c
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 304
    move-result-wide v7

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->h()J

    .line 308
    move-result-wide v12

    .line 309
    .line 310
    .line 311
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 312
    move-result v2

    .line 313
    .line 314
    .line 315
    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 316
    move-result v7

    .line 317
    sub-float/2addr v2, v7

    .line 318
    add-float/2addr v2, v3

    .line 319
    .line 320
    .line 321
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 322
    move-result v3

    .line 323
    .line 324
    cmpg-float v3, v3, v4

    .line 325
    .line 326
    if-gez v3, :cond_f

    .line 327
    .line 328
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 329
    .line 330
    iput-object v1, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$0:Ljava/lang/Object;

    .line 331
    .line 332
    iput-object v0, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$1:Ljava/lang/Object;

    .line 333
    .line 334
    iput-object v11, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$2:Ljava/lang/Object;

    .line 335
    .line 336
    iput-object v6, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->L$3:Ljava/lang/Object;

    .line 337
    .line 338
    iput v4, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$0:F

    .line 339
    .line 340
    iput v2, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->F$1:F

    .line 341
    const/4 v7, 0x2

    .line 342
    .line 343
    iput v7, v5, Landroidx/compose/material/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    .line 344
    .line 345
    .line 346
    invoke-interface {v0, v3, v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->u0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 347
    move-result-object v3

    .line 348
    .line 349
    if-ne v3, v10, :cond_d

    .line 350
    return-object v10

    .line 351
    :cond_d
    move v3, v4

    .line 352
    move-object v4, v5

    .line 353
    move-object v5, v6

    .line 354
    .line 355
    .line 356
    :goto_9
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->m()Z

    .line 357
    move-result v5

    .line 358
    .line 359
    if-eqz v5, :cond_e

    .line 360
    goto :goto_5

    .line 361
    :cond_e
    move-object v5, v10

    .line 362
    move-object v10, v11

    .line 363
    goto :goto_8

    .line 364
    :cond_f
    const/4 v7, 0x2

    .line 365
    .line 366
    .line 367
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 368
    move-result v3

    .line 369
    mul-float/2addr v3, v4

    .line 370
    sub-float/2addr v2, v3

    .line 371
    .line 372
    .line 373
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 374
    move-result-object v2

    .line 375
    .line 376
    .line 377
    invoke-interface {v1, v6, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->m()Z

    .line 381
    move-result v2

    .line 382
    .line 383
    if-eqz v2, :cond_10

    .line 384
    move-object v9, v6

    .line 385
    :goto_a
    return-object v9

    .line 386
    :cond_10
    move v3, v4

    .line 387
    move-object v4, v5

    .line 388
    move-object v5, v10

    .line 389
    move-object v10, v11

    .line 390
    const/4 v2, 0x0

    .line 391
    goto :goto_8
.end method

.method private static final b(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    move-object v4, v3

    .line 18
    .line 19
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 23
    move-result-wide v4

    .line 24
    .line 25
    .line 26
    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->d(JJ)Z

    .line 27
    move-result v4

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    .line 36
    :goto_1
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 37
    const/4 p0, 0x1

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 43
    move-result p1

    .line 44
    .line 45
    if-ne p1, p0, :cond_2

    .line 46
    move v1, p0

    .line 47
    :cond_2
    xor-int/2addr p0, v1

    .line 48
    return p0
.end method

.method public static final c(Landroidx/compose/ui/platform/ViewConfiguration;I)F
    .locals 1
    .param p0    # Landroidx/compose/ui/platform/ViewConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$pointerSlop"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->b()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/PointerType;->h(II)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->b()F

    .line 21
    move-result p0

    .line 22
    .line 23
    sget p1, Landroidx/compose/material/DragGestureDetectorCopyKt;->mouseToTouchSlopRatio:F

    .line 24
    mul-float/2addr p0, p1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->b()F

    .line 29
    move-result p0

    .line 30
    :goto_0
    return p0
.end method
