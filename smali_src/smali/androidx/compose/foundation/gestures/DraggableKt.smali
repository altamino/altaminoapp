.class public final Landroidx/compose/foundation/gestures/DraggableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,485:1\n25#2:486\n1057#3,6:487\n135#4:493\n*S KotlinDebug\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt\n*L\n138#1:486\n138#1:487,6\n206#1:493\n*E\n"
.end annotation


# direct methods
.method public static final a(Le8/l;)Landroidx/compose/foundation/gestures/DraggableState;
    .locals 1
    .param p0    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/foundation/gestures/DraggableState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "onDelta"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/foundation/gestures/DefaultDraggableState;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/DefaultDraggableState;-><init>(Le8/l;)V

    .line 11
    return-object v0
.end method

.method public static final synthetic b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/DraggableKt;->f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lw7/u;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/u;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/gestures/DraggableKt;->g(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lw7/u;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/u;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt;->l(JLandroidx/compose/foundation/gestures/Orientation;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic e(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt;->m(JLandroidx/compose/foundation/gestures/Orientation;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/u<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Float;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p5

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 19
    :goto_0
    move-object p5, v0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p5}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;-><init>(Lkotlin/coroutines/d;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :goto_1
    iget-object v0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iget v2, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x4

    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x1

    .line 40
    const/4 v8, 0x0

    .line 41
    .line 42
    if-eqz v2, :cond_5

    .line 43
    .line 44
    if-eq v2, v7, :cond_4

    .line 45
    .line 46
    if-eq v2, v6, :cond_3

    .line 47
    .line 48
    if-eq v2, v5, :cond_2

    .line 49
    .line 50
    if-ne v2, v4, :cond_1

    .line 51
    .line 52
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lkotlin/jvm/internal/m0;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0

    .line 68
    .line 69
    :cond_2
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lkotlin/jvm/internal/m0;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_3
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Landroidx/compose/foundation/gestures/Orientation;

    .line 81
    .line 82
    iget-object p1, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 85
    .line 86
    iget-object p2, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_4
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    .line 96
    move-object p4, p0

    .line 97
    .line 98
    check-cast p4, Landroidx/compose/foundation/gestures/Orientation;

    .line 99
    .line 100
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    .line 101
    move-object p3, p0

    .line 102
    .line 103
    check-cast p3, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 104
    .line 105
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 106
    move-object p2, p0

    .line 107
    .line 108
    check-cast p2, Landroidx/compose/runtime/State;

    .line 109
    .line 110
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 111
    move-object p1, p0

    .line 112
    .line 113
    check-cast p1, Landroidx/compose/runtime/State;

    .line 114
    .line 115
    iget-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 121
    goto :goto_2

    .line 122
    .line 123
    .line 124
    :cond_5
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 125
    .line 126
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 127
    .line 128
    iput-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object p1, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object p2, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object p3, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object p4, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    .line 137
    .line 138
    iput v7, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 139
    .line 140
    .line 141
    invoke-static {p0, v0, v3, p5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;ZLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    if-ne v0, v1, :cond_6

    .line 145
    return-object v1

    .line 146
    .line 147
    :cond_6
    :goto_2
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 148
    .line 149
    .line 150
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    check-cast p1, Le8/l;

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    check-cast p1, Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    move-result p1

    .line 164
    .line 165
    if-nez p1, :cond_7

    .line 166
    .line 167
    goto/16 :goto_7

    .line 168
    .line 169
    .line 170
    :cond_7
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    check-cast p1, Le8/a;

    .line 174
    .line 175
    .line 176
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    check-cast p1, Ljava/lang/Boolean;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 183
    move-result p1

    .line 184
    .line 185
    if-eqz p1, :cond_8

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 189
    .line 190
    .line 191
    invoke-static {p3, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->b(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 192
    const/4 p0, 0x0

    .line 193
    .line 194
    .line 195
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 196
    move-result-object p0

    .line 197
    .line 198
    .line 199
    invoke-static {v0, p0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 200
    move-result-object v8

    .line 201
    .line 202
    goto/16 :goto_7

    .line 203
    .line 204
    :cond_8
    iput-object p0, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 205
    .line 206
    iput-object p3, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 207
    .line 208
    iput-object p4, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    .line 213
    .line 214
    iput v6, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 215
    .line 216
    .line 217
    invoke-static {p0, v3, p5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->d(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    if-ne v0, v1, :cond_9

    .line 221
    return-object v1

    .line 222
    :cond_9
    move-object p2, p0

    .line 223
    move-object p1, p3

    .line 224
    move-object p0, p4

    .line 225
    .line 226
    :goto_3
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 227
    .line 228
    .line 229
    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->b(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 230
    .line 231
    new-instance v2, Lkotlin/jvm/internal/m0;

    .line 232
    .line 233
    .line 234
    invoke-direct {v2}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 235
    .line 236
    new-instance p4, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;

    .line 237
    .line 238
    .line 239
    invoke-direct {p4, p1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;-><init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlin/jvm/internal/m0;)V

    .line 240
    .line 241
    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 242
    .line 243
    if-ne p0, p1, :cond_b

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 247
    move-result-wide v3

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->k()I

    .line 251
    move-result p3

    .line 252
    .line 253
    iput-object v2, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 254
    .line 255
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 256
    .line 257
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 258
    .line 259
    iput v5, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 260
    move-object p0, p2

    .line 261
    move-wide p1, v3

    .line 262
    .line 263
    .line 264
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 265
    move-result-object v0

    .line 266
    .line 267
    if-ne v0, v1, :cond_a

    .line 268
    return-object v1

    .line 269
    :cond_a
    move-object p0, v2

    .line 270
    .line 271
    :goto_4
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 272
    goto :goto_6

    .line 273
    .line 274
    .line 275
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 276
    move-result-wide v5

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->k()I

    .line 280
    move-result p3

    .line 281
    .line 282
    iput-object v2, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    .line 283
    .line 284
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    .line 285
    .line 286
    iput-object v8, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    .line 287
    .line 288
    iput v4, p5, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    .line 289
    move-object p0, p2

    .line 290
    move-wide p1, v5

    .line 291
    .line 292
    .line 293
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->e(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    if-ne v0, v1, :cond_c

    .line 297
    return-object v1

    .line 298
    :cond_c
    move-object p0, v2

    .line 299
    .line 300
    :goto_5
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 301
    .line 302
    :goto_6
    if-eqz v0, :cond_d

    .line 303
    .line 304
    iget p0, p0, Lkotlin/jvm/internal/m0;->element:F

    .line 305
    .line 306
    .line 307
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 308
    move-result-object p0

    .line 309
    .line 310
    .line 311
    invoke-static {v0, p0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 312
    move-result-object v8

    .line 313
    :cond_d
    :goto_7
    return-object v8
.end method

.method private static final g(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lw7/u;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/u;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lw7/u<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
            "Lkotlinx/coroutines/channels/u<",
            "-",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;Z",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lw7/u;->d()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p5}, Landroidx/compose/foundation/gestures/DraggableKt;->n(FLandroidx/compose/foundation/gestures/Orientation;)J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 24
    move-result-wide v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 28
    move-result-wide v5

    .line 29
    .line 30
    .line 31
    invoke-static {v5, v6, p5}, Landroidx/compose/foundation/gestures/DraggableKt;->l(JLandroidx/compose/foundation/gestures/Orientation;)F

    .line 32
    move-result v5

    .line 33
    .line 34
    .line 35
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 36
    move-result v5

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2, v5}, Landroidx/compose/ui/geometry/Offset;->s(JF)J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 44
    move-result-wide v1

    .line 45
    .line 46
    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 47
    const/4 v4, 0x0

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v1, v2, v4}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(JLkotlin/jvm/internal/k;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p3, v3}, Lkotlinx/coroutines/channels/u;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 56
    .line 57
    if-eqz p4, :cond_0

    .line 58
    const/4 v5, -0x1

    .line 59
    int-to-float v5, v5

    .line 60
    mul-float/2addr v0, v5

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-direct {v3, v0, v1, v2, v4}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(FJLkotlin/jvm/internal/k;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p3, v3}, Lkotlinx/coroutines/channels/u;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p2, p5, p3, p4}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;-><init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlinx/coroutines/channels/u;Z)V

    .line 72
    .line 73
    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 74
    .line 75
    if-ne p5, p2, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 79
    move-result-wide p1

    .line 80
    .line 81
    .line 82
    invoke-static {p0, p1, p2, v0, p6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->r(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 88
    move-result-wide p1

    .line 89
    .line 90
    .line 91
    invoke-static {p0, p1, p2, v0, p6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->o(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public static final h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/q;Le8/q;Z)Landroidx/compose/ui/Modifier;
    .locals 12
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/gestures/DraggableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    move-object v2, p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string/jumbo v1, "state"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v1, "orientation"

    .line 15
    move-object v5, p2

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v1, "onDragStarted"

    .line 21
    .line 22
    move-object/from16 v9, p6

    .line 23
    .line 24
    .line 25
    invoke-static {v9, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v1, "onDragStopped"

    .line 28
    .line 29
    move-object/from16 v10, p7

    .line 30
    .line 31
    .line 32
    invoke-static {v10, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    new-instance v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, p1}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;-><init>(Landroidx/compose/foundation/gestures/DraggableState;)V

    .line 38
    .line 39
    sget-object v4, Landroidx/compose/foundation/gestures/DraggableKt$draggable$4;->INSTANCE:Landroidx/compose/foundation/gestures/DraggableKt$draggable$4;

    .line 40
    .line 41
    new-instance v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$5;

    .line 42
    .line 43
    move/from16 v0, p5

    .line 44
    .line 45
    .line 46
    invoke-direct {v8, v0}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$5;-><init>(Z)V

    .line 47
    move v6, p3

    .line 48
    .line 49
    move-object/from16 v7, p4

    .line 50
    .line 51
    move/from16 v11, p8

    .line 52
    .line 53
    .line 54
    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/gestures/DraggableKt;->i(Landroidx/compose/ui/Modifier;Le8/p;Le8/l;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/a;Le8/q;Le8/q;Z)Landroidx/compose/ui/Modifier;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public static final i(Landroidx/compose/ui/Modifier;Le8/p;Le8/l;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/a;Le8/q;Le8/q;Z)Landroidx/compose/ui/Modifier;
    .locals 16
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/foundation/gestures/PointerAwareDraggableState;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;",
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "<this>"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string/jumbo v1, "stateFactory"

    .line 10
    .line 11
    move-object/from16 v12, p1

    .line 12
    .line 13
    .line 14
    invoke-static {v12, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string v1, "canDrag"

    .line 17
    .line 18
    move-object/from16 v13, p2

    .line 19
    .line 20
    .line 21
    invoke-static {v13, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v1, "orientation"

    .line 24
    .line 25
    move-object/from16 v14, p3

    .line 26
    .line 27
    .line 28
    invoke-static {v14, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    const-string/jumbo v1, "startDragImmediately"

    .line 31
    .line 32
    move-object/from16 v15, p6

    .line 33
    .line 34
    .line 35
    invoke-static {v15, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    const-string v1, "onDragStarted"

    .line 38
    .line 39
    move-object/from16 v11, p7

    .line 40
    .line 41
    .line 42
    invoke-static {v11, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    const-string v1, "onDragStopped"

    .line 45
    .line 46
    move-object/from16 v10, p8

    .line 47
    .line 48
    .line 49
    invoke-static {v10, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$$inlined$debugInspectorInfo$1;

    .line 58
    move-object v2, v1

    .line 59
    .line 60
    move-object/from16 v3, p2

    .line 61
    .line 62
    move-object/from16 v4, p3

    .line 63
    .line 64
    move/from16 v5, p4

    .line 65
    .line 66
    move/from16 v6, p9

    .line 67
    .line 68
    move-object/from16 v7, p5

    .line 69
    .line 70
    move-object/from16 v8, p6

    .line 71
    .line 72
    move-object/from16 v9, p7

    .line 73
    .line 74
    move-object/from16 v10, p8

    .line 75
    .line 76
    move-object/from16 v11, p1

    .line 77
    .line 78
    .line 79
    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$$inlined$debugInspectorInfo$1;-><init>(Le8/l;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/a;Le8/q;Le8/q;Le8/p;)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    :goto_0
    new-instance v11, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;

    .line 87
    move-object v2, v11

    .line 88
    .line 89
    move-object/from16 v3, p1

    .line 90
    .line 91
    move-object/from16 v4, p5

    .line 92
    .line 93
    move-object/from16 v5, p6

    .line 94
    .line 95
    move-object/from16 v6, p2

    .line 96
    .line 97
    move-object/from16 v7, p7

    .line 98
    .line 99
    move-object/from16 v8, p8

    .line 100
    .line 101
    move-object/from16 v9, p3

    .line 102
    .line 103
    move/from16 v10, p4

    .line 104
    move-object v12, v11

    .line 105
    .line 106
    move/from16 v11, p9

    .line 107
    .line 108
    .line 109
    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;-><init>(Le8/p;Landroidx/compose/foundation/interaction/MutableInteractionSource;Le8/a;Le8/l;Le8/q;Le8/q;Landroidx/compose/foundation/gestures/Orientation;ZZ)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 113
    move-result-object v0

    .line 114
    return-object v0
.end method

.method public static synthetic j(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/q;Le8/q;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 11

    .line 1
    .line 2
    move/from16 v0, p9

    .line 3
    .line 4
    and-int/lit8 v1, v0, 0x4

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 8
    move v5, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v5, p3

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    move-object v6, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object v6, p4

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    move v7, v3

    .line 25
    goto :goto_2

    .line 26
    .line 27
    :cond_2
    move/from16 v7, p5

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$1;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$1;-><init>(Lkotlin/coroutines/d;)V

    .line 37
    move-object v8, v1

    .line 38
    goto :goto_3

    .line 39
    .line 40
    :cond_3
    move-object/from16 v8, p6

    .line 41
    .line 42
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$2;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$2;-><init>(Lkotlin/coroutines/d;)V

    .line 50
    move-object v9, v1

    .line 51
    goto :goto_4

    .line 52
    .line 53
    :cond_4
    move-object/from16 v9, p7

    .line 54
    .line 55
    :goto_4
    and-int/lit16 v0, v0, 0x80

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    move v10, v3

    .line 59
    goto :goto_5

    .line 60
    .line 61
    :cond_5
    move/from16 v10, p8

    .line 62
    :goto_5
    move-object v2, p0

    .line 63
    move-object v3, p1

    .line 64
    move-object v4, p2

    .line 65
    .line 66
    .line 67
    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/gestures/DraggableKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/q;Le8/q;Z)Landroidx/compose/ui/Modifier;

    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public static synthetic k(Landroidx/compose/ui/Modifier;Le8/p;Le8/l;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/a;Le8/q;Le8/q;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 12

    .line 1
    .line 2
    move/from16 v0, p10

    .line 3
    .line 4
    and-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 8
    move v6, v1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    move/from16 v6, p4

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    move-object v7, v2

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    move-object/from16 v7, p5

    .line 21
    .line 22
    :goto_1
    and-int/lit8 v1, v0, 0x40

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$6;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$6;-><init>(Lkotlin/coroutines/d;)V

    .line 30
    move-object v9, v1

    .line 31
    goto :goto_2

    .line 32
    .line 33
    :cond_2
    move-object/from16 v9, p7

    .line 34
    .line 35
    :goto_2
    and-int/lit16 v1, v0, 0x80

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$7;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$7;-><init>(Lkotlin/coroutines/d;)V

    .line 43
    move-object v10, v1

    .line 44
    goto :goto_3

    .line 45
    .line 46
    :cond_3
    move-object/from16 v10, p8

    .line 47
    .line 48
    :goto_3
    and-int/lit16 v0, v0, 0x100

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    const/4 v0, 0x0

    .line 52
    move v11, v0

    .line 53
    goto :goto_4

    .line 54
    .line 55
    :cond_4
    move/from16 v11, p9

    .line 56
    :goto_4
    move-object v2, p0

    .line 57
    move-object v3, p1

    .line 58
    move-object v4, p2

    .line 59
    move-object v5, p3

    .line 60
    .line 61
    move-object/from16 v8, p6

    .line 62
    .line 63
    .line 64
    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/gestures/DraggableKt;->i(Landroidx/compose/ui/Modifier;Le8/p;Le8/l;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/a;Le8/q;Le8/q;Z)Landroidx/compose/ui/Modifier;

    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method private static final l(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 13
    move-result p0

    .line 14
    :goto_0
    return p0
.end method

.method private static final m(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 13
    move-result p0

    .line 14
    :goto_0
    return p0
.end method

.method private static final n(FLandroidx/compose/foundation/gestures/Orientation;)J
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {v1, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 9
    move-result-wide p0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 14
    move-result-wide p0

    .line 15
    :goto_0
    return-wide p0
.end method
