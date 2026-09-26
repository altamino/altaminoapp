.class public final Landroidx/compose/foundation/gestures/TransformableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transformable.kt\nandroidx/compose/foundation/gestures/TransformableKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,178:1\n135#2:179\n32#3,6:180\n*S KotlinDebug\n*F\n+ 1 Transformable.kt\nandroidx/compose/foundation/gestures/TransformableKt\n*L\n78#1:179\n162#1:180,6\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt;->c(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/TransformableKt;->d(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Z",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    instance-of v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    move-object v1, v0

    .line 8
    .line 9
    check-cast v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;

    .line 10
    .line 11
    iget v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->label:I

    .line 12
    .line 13
    const/high16 v3, -0x80000000

    .line 14
    .line 15
    and-int v4, v2, v3

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    sub-int/2addr v2, v3

    .line 19
    .line 20
    iput v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->label:I

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;-><init>(Lkotlin/coroutines/d;)V

    .line 27
    .line 28
    :goto_0
    iget-object v0, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    iget v3, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->label:I

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x1

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    if-ne v3, v5, :cond_1

    .line 41
    .line 42
    iget-boolean v3, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->Z$0:Z

    .line 43
    .line 44
    iget-object v6, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->L$1:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v6, Lkotlin/jvm/internal/p0;

    .line 47
    .line 48
    iget-object v7, v1, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    move-object/from16 v16, v2

    .line 56
    move-object v2, v1

    .line 57
    move v1, v3

    .line 58
    .line 59
    move-object/from16 v3, v16

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    new-instance v0, Lkotlin/jvm/internal/p0;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 77
    move-object v6, v0

    .line 78
    move-object v3, v2

    .line 79
    .line 80
    move-object/from16 v0, p0

    .line 81
    move-object v2, v1

    .line 82
    .line 83
    move/from16 v1, p1

    .line 84
    .line 85
    :goto_1
    iput-object v0, v2, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->L$0:Ljava/lang/Object;

    .line 86
    .line 87
    iput-object v6, v2, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->L$1:Ljava/lang/Object;

    .line 88
    .line 89
    iput-boolean v1, v2, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->Z$0:Z

    .line 90
    .line 91
    iput v5, v2, Landroidx/compose/foundation/gestures/TransformableKt$awaitTwoDowns$1;->label:I

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v4, v2, v5, v4}, Landroidx/compose/ui/input/pointer/b;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v7

    .line 96
    .line 97
    if-ne v7, v3, :cond_3

    .line 98
    return-object v3

    .line 99
    .line 100
    :cond_3
    move-object/from16 v16, v7

    .line 101
    move-object v7, v0

    .line 102
    .line 103
    move-object/from16 v0, v16

    .line 104
    .line 105
    :goto_2
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 106
    .line 107
    new-instance v8, Lkotlin/jvm/internal/n0;

    .line 108
    .line 109
    .line 110
    invoke-direct {v8}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 111
    .line 112
    iget-object v9, v6, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 113
    const/4 v10, 0x0

    .line 114
    .line 115
    if-eqz v9, :cond_4

    .line 116
    move v9, v5

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move v9, v10

    .line 119
    .line 120
    :goto_3
    iput v9, v8, Lkotlin/jvm/internal/n0;->element:I

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 128
    move-result v9

    .line 129
    .line 130
    :goto_4
    if-ge v10, v9, :cond_b

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v11

    .line 135
    .line 136
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 137
    .line 138
    if-eqz v1, :cond_5

    .line 139
    .line 140
    .line 141
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->a(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 142
    move-result v12

    .line 143
    goto :goto_5

    .line 144
    .line 145
    .line 146
    :cond_5
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->b(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 147
    move-result v12

    .line 148
    .line 149
    :goto_5
    if-eqz v1, :cond_6

    .line 150
    .line 151
    .line 152
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->c(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 153
    move-result v13

    .line 154
    goto :goto_6

    .line 155
    .line 156
    .line 157
    :cond_6
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 158
    move-result v13

    .line 159
    .line 160
    :goto_6
    if-eqz v13, :cond_9

    .line 161
    .line 162
    .line 163
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 164
    move-result-wide v13

    .line 165
    .line 166
    iget-object v15, v6, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 167
    .line 168
    if-nez v15, :cond_7

    .line 169
    goto :goto_7

    .line 170
    .line 171
    :cond_7
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerId;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerId;->g()J

    .line 175
    move-result-wide v4

    .line 176
    .line 177
    .line 178
    invoke-static {v4, v5, v13, v14}, Landroidx/compose/ui/input/pointer/PointerId;->d(JJ)Z

    .line 179
    move-result v4

    .line 180
    .line 181
    if-eqz v4, :cond_8

    .line 182
    const/4 v4, 0x0

    .line 183
    .line 184
    iput-object v4, v6, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 185
    .line 186
    iget v5, v8, Lkotlin/jvm/internal/n0;->element:I

    .line 187
    const/4 v13, 0x1

    .line 188
    sub-int/2addr v5, v13

    .line 189
    .line 190
    iput v5, v8, Lkotlin/jvm/internal/n0;->element:I

    .line 191
    goto :goto_8

    .line 192
    :cond_8
    const/4 v4, 0x0

    .line 193
    const/4 v13, 0x1

    .line 194
    goto :goto_8

    .line 195
    :cond_9
    :goto_7
    move v13, v5

    .line 196
    .line 197
    :goto_8
    if-eqz v12, :cond_a

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->e()J

    .line 201
    move-result-wide v11

    .line 202
    .line 203
    .line 204
    invoke-static {v11, v12}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 205
    move-result-object v5

    .line 206
    .line 207
    iput-object v5, v6, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 208
    .line 209
    iget v5, v8, Lkotlin/jvm/internal/n0;->element:I

    .line 210
    add-int/2addr v5, v13

    .line 211
    .line 212
    iput v5, v8, Lkotlin/jvm/internal/n0;->element:I

    .line 213
    .line 214
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 215
    move v5, v13

    .line 216
    goto :goto_4

    .line 217
    :cond_b
    move v13, v5

    .line 218
    .line 219
    iget v0, v8, Lkotlin/jvm/internal/n0;->element:I

    .line 220
    .line 221
    if-le v0, v13, :cond_c

    .line 222
    .line 223
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 224
    return-object v0

    .line 225
    :cond_c
    move-object v0, v7

    .line 226
    move v5, v13

    .line 227
    .line 228
    goto/16 :goto_1
.end method

.method private static final d(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/foundation/gestures/TransformableState;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    instance-of v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    move-object v2, v1

    .line 10
    .line 11
    check-cast v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    .line 12
    .line 13
    iget v3, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    .line 14
    .line 15
    const/high16 v4, -0x80000000

    .line 16
    .line 17
    and-int v5, v3, v4

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    sub-int/2addr v3, v4

    .line 21
    .line 22
    iput v3, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v1}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;-><init>(Lkotlin/coroutines/d;)V

    .line 29
    .line 30
    :goto_0
    iget-object v1, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->result:Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    iget v4, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    if-eq v4, v6, :cond_2

    .line 44
    .line 45
    if-ne v4, v5, :cond_1

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0

    .line 59
    .line 60
    :cond_2
    iget v0, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    .line 61
    .line 62
    iget-object v4, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$7:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Lkotlin/jvm/internal/k0;

    .line 65
    .line 66
    iget-object v6, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$6:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v6, Lkotlin/jvm/internal/k0;

    .line 69
    .line 70
    iget-object v8, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$5:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v8, Lkotlin/jvm/internal/o0;

    .line 73
    .line 74
    iget-object v9, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$4:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v9, Lkotlin/jvm/internal/m0;

    .line 77
    .line 78
    iget-object v10, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v10, Lkotlin/jvm/internal/m0;

    .line 81
    .line 82
    iget-object v11, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v11, Landroidx/compose/runtime/State;

    .line 85
    .line 86
    iget-object v12, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v12, Landroidx/compose/runtime/State;

    .line 89
    .line 90
    iget-object v13, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 96
    .line 97
    move/from16 v18, v0

    .line 98
    .line 99
    move-object/from16 v19, v4

    .line 100
    move-object v1, v6

    .line 101
    .line 102
    move-object/from16 v17, v8

    .line 103
    move-object v15, v9

    .line 104
    .line 105
    move-object/from16 v16, v10

    .line 106
    move-object v14, v11

    .line 107
    .line 108
    move-object/from16 v20, v12

    .line 109
    goto :goto_1

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    new-instance v10, Lkotlin/jvm/internal/m0;

    .line 115
    .line 116
    .line 117
    invoke-direct {v10}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 118
    .line 119
    new-instance v9, Lkotlin/jvm/internal/m0;

    .line 120
    .line 121
    .line 122
    invoke-direct {v9}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 123
    .line 124
    const/high16 v1, 0x3f800000    # 1.0f

    .line 125
    .line 126
    iput v1, v9, Lkotlin/jvm/internal/m0;->element:F

    .line 127
    .line 128
    new-instance v8, Lkotlin/jvm/internal/o0;

    .line 129
    .line 130
    .line 131
    invoke-direct {v8}, Lkotlin/jvm/internal/o0;-><init>()V

    .line 132
    .line 133
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 137
    move-result-wide v11

    .line 138
    .line 139
    iput-wide v11, v8, Lkotlin/jvm/internal/o0;->element:J

    .line 140
    .line 141
    new-instance v1, Lkotlin/jvm/internal/k0;

    .line 142
    .line 143
    .line 144
    invoke-direct {v1}, Lkotlin/jvm/internal/k0;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    .line 151
    invoke-interface {v4}, Landroidx/compose/ui/platform/ViewConfiguration;->b()F

    .line 152
    move-result v4

    .line 153
    .line 154
    new-instance v11, Lkotlin/jvm/internal/k0;

    .line 155
    .line 156
    .line 157
    invoke-direct {v11}, Lkotlin/jvm/internal/k0;-><init>()V

    .line 158
    .line 159
    new-instance v12, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$2;

    .line 160
    .line 161
    .line 162
    invoke-direct {v12, v7}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$2;-><init>(Lkotlin/coroutines/d;)V

    .line 163
    .line 164
    iput-object v0, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    .line 165
    .line 166
    move-object/from16 v13, p1

    .line 167
    .line 168
    iput-object v13, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    .line 169
    .line 170
    move-object/from16 v14, p2

    .line 171
    .line 172
    iput-object v14, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v10, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    .line 175
    .line 176
    iput-object v9, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$4:Ljava/lang/Object;

    .line 177
    .line 178
    iput-object v8, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$5:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object v1, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$6:Ljava/lang/Object;

    .line 181
    .line 182
    iput-object v11, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$7:Ljava/lang/Object;

    .line 183
    .line 184
    iput v4, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    .line 185
    .line 186
    iput v6, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    .line 187
    .line 188
    .line 189
    invoke-interface {v0, v12, v2}, Landroidx/compose/ui/input/pointer/PointerInputScope;->J(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 190
    move-result-object v6

    .line 191
    .line 192
    if-ne v6, v3, :cond_4

    .line 193
    return-object v3

    .line 194
    .line 195
    :cond_4
    move/from16 v18, v4

    .line 196
    .line 197
    move-object/from16 v17, v8

    .line 198
    move-object v15, v9

    .line 199
    .line 200
    move-object/from16 v16, v10

    .line 201
    .line 202
    move-object/from16 v19, v11

    .line 203
    .line 204
    move-object/from16 v20, v13

    .line 205
    move-object v13, v0

    .line 206
    .line 207
    .line 208
    :goto_1
    :try_start_1
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    check-cast v0, Landroidx/compose/foundation/gestures/TransformableState;

    .line 212
    .line 213
    sget-object v4, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    .line 214
    .line 215
    new-instance v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3;

    .line 216
    .line 217
    const/16 v21, 0x0

    .line 218
    move-object v12, v6

    .line 219
    move-object v14, v1

    .line 220
    .line 221
    .line 222
    invoke-direct/range {v12 .. v21}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$3;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/internal/k0;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/m0;Lkotlin/jvm/internal/o0;FLkotlin/jvm/internal/k0;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 223
    .line 224
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    .line 225
    .line 226
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    .line 229
    .line 230
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    .line 231
    .line 232
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$4:Ljava/lang/Object;

    .line 233
    .line 234
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$5:Ljava/lang/Object;

    .line 235
    .line 236
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$6:Ljava/lang/Object;

    .line 237
    .line 238
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$7:Ljava/lang/Object;

    .line 239
    .line 240
    iput v5, v2, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    .line 241
    .line 242
    .line 243
    invoke-interface {v0, v4, v6, v2}, Landroidx/compose/foundation/gestures/TransformableState;->a(Landroidx/compose/foundation/MutatePriority;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 244
    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    .line 246
    if-ne v0, v3, :cond_5

    .line 247
    return-object v3

    .line 248
    .line 249
    :catch_0
    :cond_5
    :goto_2
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 250
    return-object v0
.end method
