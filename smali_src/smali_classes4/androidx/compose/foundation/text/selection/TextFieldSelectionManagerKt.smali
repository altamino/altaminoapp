.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldSelectionManager.kt\nandroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,902:1\n50#2:903\n49#2:904\n1057#3,6:905\n*S KotlinDebug\n*F\n+ 1 TextFieldSelectionManager.kt\nandroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt\n*L\n807#1:903\n807#1:904\n807#1:905,6\n*E\n"
.end annotation


# direct methods
.method public static final a(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
    .locals 10
    .param p1    # Landroidx/compose/ui/text/style/ResolvedTextDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    const-string v0, "direction"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "manager"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, -0x50245748

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    const v1, 0x1e7b2b64

    .line 25
    .line 26
    .line 27
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    or-int/2addr v0, v1

    .line 37
    .line 38
    .line 39
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-ne v1, v0, :cond_1

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p2, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->I(Z)Landroidx/compose/foundation/text/TextDragObserver;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 61
    .line 62
    check-cast v1, Landroidx/compose/foundation/text/TextDragObserver;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->z(Z)J

    .line 66
    move-result-wide v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 74
    move-result-wide v4

    .line 75
    .line 76
    .line 77
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->m(J)Z

    .line 78
    move-result v5

    .line 79
    .line 80
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 81
    .line 82
    new-instance v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$1;

    .line 83
    const/4 v6, 0x0

    .line 84
    .line 85
    .line 86
    invoke-direct {v4, v1, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/d;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 90
    move-result-object v6

    .line 91
    const/4 v7, 0x0

    .line 92
    .line 93
    shl-int/lit8 v0, p4, 0x3

    .line 94
    .line 95
    and-int/lit8 v1, v0, 0x70

    .line 96
    .line 97
    const/high16 v4, 0x30000

    .line 98
    or-int/2addr v1, v4

    .line 99
    .line 100
    and-int/lit16 v0, v0, 0x380

    .line 101
    .line 102
    or-int v9, v1, v0

    .line 103
    move-wide v1, v2

    .line 104
    move v3, p0

    .line 105
    move-object v4, p1

    .line 106
    move-object v8, p3

    .line 107
    .line 108
    .line 109
    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->c(JZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 113
    move-result-object p3

    .line 114
    .line 115
    if-nez p3, :cond_2

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :cond_2
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;-><init>(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 125
    :goto_0
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)J
    .locals 13
    .param p0    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "manager"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->w()Landroidx/compose/foundation/text/Handle;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, -0x1

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    move v0, v1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    sget-object v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 41
    move-result v0

    .line 42
    .line 43
    aget v0, v2, v0

    .line 44
    .line 45
    :goto_0
    if-eq v0, v1, :cond_d

    .line 46
    const/4 v1, 0x2

    .line 47
    const/4 v2, 0x1

    .line 48
    .line 49
    if-eq v0, v2, :cond_3

    .line 50
    .line 51
    if-eq v0, v1, :cond_3

    .line 52
    const/4 v3, 0x3

    .line 53
    .line 54
    if-ne v0, v3, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    .line 65
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 66
    move-result v0

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_2
    new-instance p0, Lw7/s;

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 73
    throw p0

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 81
    move-result-wide v3

    .line 82
    .line 83
    .line 84
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 85
    move-result v0

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->C()Landroidx/compose/ui/text/input/OffsetMapping;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    .line 92
    invoke-interface {v3, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 93
    move-result v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-static {v3}, Lkotlin/text/k;->V(Ljava/lang/CharSequence;)Lj8/i;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v3}, Lj8/m;->o(ILj8/f;)I

    .line 109
    move-result v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    if-eqz v3, :cond_c

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    if-eqz v3, :cond_c

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->i()Landroidx/compose/ui/text/TextLayoutResult;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    if-nez v3, :cond_4

    .line 128
    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    .line 132
    :cond_4
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    .line 133
    move-result-object v4

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Rect;->h()J

    .line 137
    move-result-wide v4

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 141
    move-result-object v6

    .line 142
    .line 143
    if-eqz v6, :cond_b

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Landroidx/compose/foundation/text/TextFieldState;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 147
    move-result-object v6

    .line 148
    .line 149
    if-nez v6, :cond_5

    .line 150
    .line 151
    goto/16 :goto_4

    .line 152
    .line 153
    .line 154
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 155
    move-result-object v7

    .line 156
    .line 157
    if-eqz v7, :cond_a

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Landroidx/compose/foundation/text/TextFieldState;->g()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 161
    move-result-object v7

    .line 162
    .line 163
    if-eqz v7, :cond_a

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 167
    move-result-object v7

    .line 168
    .line 169
    if-nez v7, :cond_6

    .line 170
    .line 171
    goto/16 :goto_3

    .line 172
    .line 173
    .line 174
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u()Landroidx/compose/ui/geometry/Offset;

    .line 175
    move-result-object v8

    .line 176
    .line 177
    if-eqz v8, :cond_9

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 181
    move-result-wide v8

    .line 182
    .line 183
    .line 184
    invoke-interface {v7, v6, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 185
    move-result-wide v8

    .line 186
    .line 187
    .line 188
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 189
    move-result v8

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/TextLayoutResult;->p(I)I

    .line 193
    move-result v0

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/TextLayoutResult;->t(I)I

    .line 197
    move-result v9

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->n(IZ)I

    .line 201
    move-result v0

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 205
    move-result-object v10

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 209
    move-result-wide v10

    .line 210
    .line 211
    .line 212
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 213
    move-result v10

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->H()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 217
    move-result-object p0

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 221
    move-result-wide v11

    .line 222
    .line 223
    .line 224
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 225
    move-result p0

    .line 226
    const/4 v11, 0x0

    .line 227
    .line 228
    if-le v10, p0, :cond_7

    .line 229
    move p0, v2

    .line 230
    goto :goto_2

    .line 231
    :cond_7
    move p0, v11

    .line 232
    .line 233
    .line 234
    :goto_2
    invoke-static {v3, v9, v2, p0}, Landroidx/compose/foundation/text/selection/TextSelectionDelegateKt;->a(Landroidx/compose/ui/text/TextLayoutResult;IZZ)F

    .line 235
    move-result v2

    .line 236
    .line 237
    .line 238
    invoke-static {v3, v0, v11, p0}, Landroidx/compose/foundation/text/selection/TextSelectionDelegateKt;->a(Landroidx/compose/ui/text/TextLayoutResult;IZZ)F

    .line 239
    move-result p0

    .line 240
    .line 241
    .line 242
    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    .line 243
    move-result v0

    .line 244
    .line 245
    .line 246
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    .line 247
    move-result p0

    .line 248
    .line 249
    .line 250
    invoke-static {v8, v0, p0}, Lj8/m;->m(FFF)F

    .line 251
    move-result p0

    .line 252
    sub-float/2addr v8, p0

    .line 253
    .line 254
    .line 255
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 256
    move-result v0

    .line 257
    .line 258
    .line 259
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 260
    move-result p1

    .line 261
    div-int/2addr p1, v1

    .line 262
    int-to-float p1, p1

    .line 263
    .line 264
    cmpl-float p1, v0, p1

    .line 265
    .line 266
    if-lez p1, :cond_8

    .line 267
    .line 268
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 272
    move-result-wide p0

    .line 273
    return-wide p0

    .line 274
    .line 275
    .line 276
    :cond_8
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 277
    move-result p1

    .line 278
    .line 279
    .line 280
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 281
    move-result-wide p0

    .line 282
    .line 283
    .line 284
    invoke-interface {v6, v7, p0, p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 285
    move-result-wide p0

    .line 286
    return-wide p0

    .line 287
    .line 288
    :cond_9
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 292
    move-result-wide p0

    .line 293
    return-wide p0

    .line 294
    .line 295
    :cond_a
    :goto_3
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 299
    move-result-wide p0

    .line 300
    return-wide p0

    .line 301
    .line 302
    :cond_b
    :goto_4
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 306
    move-result-wide p0

    .line 307
    return-wide p0

    .line 308
    .line 309
    :cond_c
    :goto_5
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 313
    move-result-wide p0

    .line 314
    return-wide p0

    .line 315
    .line 316
    :cond_d
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 320
    move-result-wide p0

    .line 321
    return-wide p0
.end method

.method public static final c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z
    .locals 1
    .param p0    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->E()Landroidx/compose/foundation/text/TextFieldState;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->f()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->z(Z)J

    .line 27
    move-result-wide p0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->c(Landroidx/compose/ui/geometry/Rect;J)Z

    .line 31
    move-result p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method
