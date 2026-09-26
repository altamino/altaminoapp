.class public final Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidSelectionHandles.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidSelectionHandles.android.kt\nandroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt\n+ 2 CanvasDrawScope.kt\nandroidx/compose/ui/graphics/drawscope/CanvasDrawScope\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,331:1\n558#2,17:332\n50#3:349\n49#3:350\n1057#4,6:351\n*S KotlinDebug\n*F\n+ 1 AndroidSelectionHandles.android.kt\nandroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt\n*L\n194#1:332,17\n232#1:349\n232#1:350\n232#1:351,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/runtime/Composer;I)V
    .locals 7
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/style/ResolvedTextDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    const-string v0, "modifier"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "direction"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x2dbc596

    .line 14
    .line 15
    .line 16
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object p4

    .line 18
    .line 19
    and-int/lit8 v0, p5, 0xe

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int/2addr v0, p5

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, p5

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v1, p5, 0x70

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x20

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_2
    const/16 v1, 0x10

    .line 49
    :goto_2
    or-int/2addr v0, v1

    .line 50
    .line 51
    :cond_3
    and-int/lit16 v1, p5, 0x380

    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const/16 v1, 0x100

    .line 62
    goto :goto_3

    .line 63
    .line 64
    :cond_4
    const/16 v1, 0x80

    .line 65
    :goto_3
    or-int/2addr v0, v1

    .line 66
    .line 67
    :cond_5
    and-int/lit16 v1, p5, 0x1c00

    .line 68
    .line 69
    if-nez v1, :cond_7

    .line 70
    .line 71
    .line 72
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 73
    move-result v1

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    const/16 v1, 0x800

    .line 78
    goto :goto_4

    .line 79
    .line 80
    :cond_6
    const/16 v1, 0x400

    .line 81
    :goto_4
    or-int/2addr v0, v1

    .line 82
    .line 83
    :cond_7
    and-int/lit16 v0, v0, 0x16db

    .line 84
    .line 85
    const/16 v1, 0x492

    .line 86
    .line 87
    if-ne v0, v1, :cond_9

    .line 88
    .line 89
    .line 90
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->b()Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-nez v0, :cond_8

    .line 94
    goto :goto_5

    .line 95
    .line 96
    .line 97
    :cond_8
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->g()V

    .line 98
    goto :goto_6

    .line 99
    .line 100
    .line 101
    :cond_9
    :goto_5
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->c()F

    .line 102
    move-result v0

    .line 103
    .line 104
    .line 105
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->b()F

    .line 106
    move-result v1

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->A(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-static {v0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->f(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Landroidx/compose/ui/Modifier;

    .line 114
    move-result-object v0

    .line 115
    const/4 v1, 0x0

    .line 116
    .line 117
    .line 118
    invoke-static {v0, p4, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 119
    .line 120
    .line 121
    :goto_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 122
    move-result-object p4

    .line 123
    .line 124
    if-nez p4, :cond_a

    .line 125
    goto :goto_7

    .line 126
    .line 127
    :cond_a
    new-instance v6, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;

    .line 128
    move-object v0, v6

    .line 129
    move-object v1, p0

    .line 130
    move v2, p1

    .line 131
    move-object v3, p2

    .line 132
    move v4, p3

    .line 133
    move v5, p5

    .line 134
    .line 135
    .line 136
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;-><init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZI)V

    .line 137
    .line 138
    .line 139
    invoke-interface {p4, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 140
    :goto_7
    return-void
.end method

.method public static final b(JLandroidx/compose/foundation/text/selection/HandleReferencePoint;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 22
    .param p2    # Landroidx/compose/foundation/text/selection/HandleReferencePoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/foundation/text/selection/HandleReferencePoint;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v3, p2

    .line 3
    .line 4
    move-object/from16 v11, p3

    .line 5
    .line 6
    move/from16 v12, p5

    .line 7
    .line 8
    const-string v0, "handleReferencePoint"

    .line 9
    .line 10
    .line 11
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "content"

    .line 14
    .line 15
    .line 16
    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x53fc662e

    .line 20
    .line 21
    move-object/from16 v1, p4

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    and-int/lit8 v1, v12, 0xe

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    move-wide/from16 v1, p0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 35
    move-result v4

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    const/4 v4, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v4, 0x2

    .line 41
    :goto_0
    or-int/2addr v4, v12

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    move-wide/from16 v1, p0

    .line 45
    move v4, v12

    .line 46
    .line 47
    :goto_1
    and-int/lit8 v5, v12, 0x70

    .line 48
    .line 49
    if-nez v5, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 53
    move-result v5

    .line 54
    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    const/16 v5, 0x20

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_2
    const/16 v5, 0x10

    .line 61
    :goto_2
    or-int/2addr v4, v5

    .line 62
    .line 63
    :cond_3
    and-int/lit16 v5, v12, 0x380

    .line 64
    .line 65
    if-nez v5, :cond_5

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 69
    move-result v5

    .line 70
    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    const/16 v5, 0x100

    .line 74
    goto :goto_3

    .line 75
    .line 76
    :cond_4
    const/16 v5, 0x80

    .line 77
    :goto_3
    or-int/2addr v4, v5

    .line 78
    .line 79
    :cond_5
    and-int/lit16 v5, v4, 0x2db

    .line 80
    .line 81
    const/16 v6, 0x92

    .line 82
    .line 83
    if-ne v5, v6, :cond_7

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 87
    move-result v5

    .line 88
    .line 89
    if-nez v5, :cond_6

    .line 90
    goto :goto_4

    .line 91
    .line 92
    .line 93
    :cond_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 94
    goto :goto_5

    .line 95
    .line 96
    .line 97
    :cond_7
    :goto_4
    invoke-static/range {p0 .. p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 98
    move-result v5

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Lg8/a;->c(F)I

    .line 102
    move-result v5

    .line 103
    .line 104
    .line 105
    invoke-static/range {p0 .. p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 106
    move-result v6

    .line 107
    .line 108
    .line 109
    invoke-static {v6}, Lg8/a;->c(F)I

    .line 110
    move-result v6

    .line 111
    .line 112
    .line 113
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 114
    move-result-wide v5

    .line 115
    .line 116
    .line 117
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->b(J)Landroidx/compose/ui/unit/IntOffset;

    .line 118
    move-result-object v7

    .line 119
    .line 120
    .line 121
    const v8, 0x1e7b2b64

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 128
    move-result v8

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 132
    move-result v7

    .line 133
    or-int/2addr v7, v8

    .line 134
    .line 135
    .line 136
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 137
    move-result-object v8

    .line 138
    .line 139
    if-nez v7, :cond_8

    .line 140
    .line 141
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 145
    move-result-object v7

    .line 146
    .line 147
    if-ne v8, v7, :cond_9

    .line 148
    .line 149
    :cond_8
    new-instance v8, Landroidx/compose/foundation/text/selection/HandlePositionProvider;

    .line 150
    const/4 v7, 0x0

    .line 151
    .line 152
    .line 153
    invoke-direct {v8, v3, v5, v6, v7}, Landroidx/compose/foundation/text/selection/HandlePositionProvider;-><init>(Landroidx/compose/foundation/text/selection/HandleReferencePoint;JLkotlin/jvm/internal/k;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 160
    move-object v5, v8

    .line 161
    .line 162
    check-cast v5, Landroidx/compose/foundation/text/selection/HandlePositionProvider;

    .line 163
    const/4 v6, 0x0

    .line 164
    .line 165
    new-instance v7, Landroidx/compose/ui/window/PopupProperties;

    .line 166
    const/4 v14, 0x0

    .line 167
    const/4 v15, 0x0

    .line 168
    .line 169
    const/16 v16, 0x0

    .line 170
    .line 171
    const/16 v17, 0x0

    .line 172
    .line 173
    const/16 v18, 0x1

    .line 174
    .line 175
    const/16 v19, 0x0

    .line 176
    .line 177
    const/16 v20, 0xf

    .line 178
    .line 179
    const/16 v21, 0x0

    .line 180
    move-object v13, v7

    .line 181
    .line 182
    .line 183
    invoke-direct/range {v13 .. v21}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/k;)V

    .line 184
    .line 185
    shl-int/lit8 v4, v4, 0x3

    .line 186
    .line 187
    and-int/lit16 v9, v4, 0x1c00

    .line 188
    const/4 v10, 0x2

    .line 189
    move-object v4, v5

    .line 190
    move-object v5, v6

    .line 191
    move-object v6, v7

    .line 192
    .line 193
    move-object/from16 v7, p3

    .line 194
    move-object v8, v0

    .line 195
    .line 196
    .line 197
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a(Landroidx/compose/ui/window/PopupPositionProvider;Le8/a;Landroidx/compose/ui/window/PopupProperties;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 198
    .line 199
    .line 200
    :goto_5
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 201
    move-result-object v6

    .line 202
    .line 203
    if-nez v6, :cond_a

    .line 204
    goto :goto_6

    .line 205
    .line 206
    :cond_a
    new-instance v7, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$HandlePopup$1;

    .line 207
    move-object v0, v7

    .line 208
    .line 209
    move-wide/from16 v1, p0

    .line 210
    .line 211
    move-object/from16 v3, p2

    .line 212
    .line 213
    move-object/from16 v4, p3

    .line 214
    .line 215
    move/from16 v5, p5

    .line 216
    .line 217
    .line 218
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$HandlePopup$1;-><init>(JLandroidx/compose/foundation/text/selection/HandleReferencePoint;Le8/p;I)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 222
    :goto_6
    return-void
.end method

.method public static final c(JZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .param p3    # Landroidx/compose/ui/text/style/ResolvedTextDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Landroidx/compose/ui/text/style/ResolvedTextDirection;",
            "Z",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v9, p3

    .line 3
    .line 4
    move-object/from16 v10, p5

    .line 5
    .line 6
    move/from16 v11, p8

    .line 7
    .line 8
    const-string v0, "direction"

    .line 9
    .line 10
    .line 11
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "modifier"

    .line 14
    .line 15
    .line 16
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x24bbecda

    .line 20
    .line 21
    move-object/from16 v1, p7

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v12

    .line 26
    .line 27
    and-int/lit8 v0, v11, 0xe

    .line 28
    .line 29
    move-wide/from16 v13, p0

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {v12, v13, v14}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x2

    .line 41
    :goto_0
    or-int/2addr v0, v11

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v0, v11

    .line 44
    .line 45
    :goto_1
    and-int/lit8 v1, v11, 0x70

    .line 46
    .line 47
    move/from16 v15, p2

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const/16 v1, 0x20

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_2
    const/16 v1, 0x10

    .line 61
    :goto_2
    or-int/2addr v0, v1

    .line 62
    .line 63
    :cond_3
    and-int/lit16 v1, v11, 0x380

    .line 64
    .line 65
    if-nez v1, :cond_5

    .line 66
    .line 67
    .line 68
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    const/16 v1, 0x100

    .line 74
    goto :goto_3

    .line 75
    .line 76
    :cond_4
    const/16 v1, 0x80

    .line 77
    :goto_3
    or-int/2addr v0, v1

    .line 78
    .line 79
    :cond_5
    and-int/lit16 v1, v11, 0x1c00

    .line 80
    .line 81
    move/from16 v8, p4

    .line 82
    .line 83
    if-nez v1, :cond_7

    .line 84
    .line 85
    .line 86
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 87
    move-result v1

    .line 88
    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    const/16 v1, 0x800

    .line 92
    goto :goto_4

    .line 93
    .line 94
    :cond_6
    const/16 v1, 0x400

    .line 95
    :goto_4
    or-int/2addr v0, v1

    .line 96
    .line 97
    .line 98
    :cond_7
    const v1, 0xe000

    .line 99
    and-int/2addr v1, v11

    .line 100
    .line 101
    if-nez v1, :cond_9

    .line 102
    .line 103
    .line 104
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 105
    move-result v1

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    const/16 v1, 0x4000

    .line 110
    goto :goto_5

    .line 111
    .line 112
    :cond_8
    const/16 v1, 0x2000

    .line 113
    :goto_5
    or-int/2addr v0, v1

    .line 114
    .line 115
    :cond_9
    const/high16 v1, 0x70000

    .line 116
    and-int/2addr v1, v11

    .line 117
    .line 118
    move-object/from16 v7, p6

    .line 119
    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    .line 123
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 124
    move-result v1

    .line 125
    .line 126
    if-eqz v1, :cond_a

    .line 127
    .line 128
    const/high16 v1, 0x20000

    .line 129
    goto :goto_6

    .line 130
    .line 131
    :cond_a
    const/high16 v1, 0x10000

    .line 132
    :goto_6
    or-int/2addr v0, v1

    .line 133
    .line 134
    :cond_b
    move/from16 v16, v0

    .line 135
    .line 136
    .line 137
    const v0, 0x5b6db

    .line 138
    .line 139
    and-int v0, v16, v0

    .line 140
    .line 141
    .line 142
    const v1, 0x12492

    .line 143
    .line 144
    if-ne v0, v1, :cond_d

    .line 145
    .line 146
    .line 147
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->b()Z

    .line 148
    move-result v0

    .line 149
    .line 150
    if-nez v0, :cond_c

    .line 151
    goto :goto_7

    .line 152
    .line 153
    .line 154
    :cond_c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 155
    goto :goto_a

    .line 156
    .line 157
    .line 158
    :cond_d
    :goto_7
    invoke-static/range {p2 .. p4}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->h(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-eqz v0, :cond_e

    .line 162
    .line 163
    sget-object v0, Landroidx/compose/foundation/text/selection/HandleReferencePoint;->TopRight:Landroidx/compose/foundation/text/selection/HandleReferencePoint;

    .line 164
    .line 165
    :goto_8
    move-object/from16 v17, v0

    .line 166
    goto :goto_9

    .line 167
    .line 168
    :cond_e
    sget-object v0, Landroidx/compose/foundation/text/selection/HandleReferencePoint;->TopLeft:Landroidx/compose/foundation/text/selection/HandleReferencePoint;

    .line 169
    goto :goto_8

    .line 170
    .line 171
    :goto_9
    new-instance v6, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$1;

    .line 172
    move-object v0, v6

    .line 173
    .line 174
    move-object/from16 v1, p6

    .line 175
    .line 176
    move-object/from16 v2, p5

    .line 177
    .line 178
    move/from16 v3, p2

    .line 179
    .line 180
    move-wide/from16 v4, p0

    .line 181
    move-object v9, v6

    .line 182
    .line 183
    move/from16 v6, v16

    .line 184
    .line 185
    move-object/from16 v7, p3

    .line 186
    .line 187
    move/from16 v8, p4

    .line 188
    .line 189
    .line 190
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$1;-><init>(Le8/p;Landroidx/compose/ui/Modifier;ZJILandroidx/compose/ui/text/style/ResolvedTextDirection;Z)V

    .line 191
    .line 192
    .line 193
    const v0, 0x2ba2f39d

    .line 194
    const/4 v1, 0x1

    .line 195
    .line 196
    .line 197
    invoke-static {v12, v0, v1, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 198
    move-result-object v4

    .line 199
    .line 200
    and-int/lit8 v0, v16, 0xe

    .line 201
    .line 202
    or-int/lit16 v6, v0, 0x180

    .line 203
    .line 204
    move-wide/from16 v1, p0

    .line 205
    .line 206
    move-object/from16 v3, v17

    .line 207
    move-object v5, v12

    .line 208
    .line 209
    .line 210
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->b(JLandroidx/compose/foundation/text/selection/HandleReferencePoint;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 211
    .line 212
    .line 213
    :goto_a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 214
    move-result-object v9

    .line 215
    .line 216
    if-nez v9, :cond_f

    .line 217
    goto :goto_b

    .line 218
    .line 219
    :cond_f
    new-instance v12, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$2;

    .line 220
    move-object v0, v12

    .line 221
    .line 222
    move-wide/from16 v1, p0

    .line 223
    .line 224
    move/from16 v3, p2

    .line 225
    .line 226
    move-object/from16 v4, p3

    .line 227
    .line 228
    move/from16 v5, p4

    .line 229
    .line 230
    move-object/from16 v6, p5

    .line 231
    .line 232
    move-object/from16 v7, p6

    .line 233
    .line 234
    move/from16 v8, p8

    .line 235
    .line 236
    .line 237
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$2;-><init>(JZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Le8/p;I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v9, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 241
    :goto_b
    return-void
.end method

.method public static final synthetic d(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->h(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final e(Landroidx/compose/ui/draw/CacheDrawScope;F)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 30
    .param p0    # Landroidx/compose/ui/draw/CacheDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v3, p1

    .line 5
    .line 6
    const-string v1, "<this>"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    float-to-double v1, v3

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 14
    move-result-wide v1

    .line 15
    double-to-float v1, v1

    .line 16
    float-to-int v1, v1

    .line 17
    .line 18
    mul-int/lit8 v5, v1, 0x2

    .line 19
    .line 20
    sget-object v1, Landroidx/compose/foundation/text/selection/HandleImageCache;->INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/HandleImageCache;->c()Landroidx/compose/ui/graphics/ImageBitmap;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/HandleImageCache;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/HandleImageCache;->b()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 32
    move-result-object v11

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    .line 40
    move-result v6

    .line 41
    .line 42
    if-gt v5, v6, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-interface {v2}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    .line 46
    move-result v6

    .line 47
    .line 48
    if-le v5, v6, :cond_0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    move-object v12, v2

    .line 51
    move-object v13, v4

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_1
    :goto_1
    sget-object v2, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->a()I

    .line 58
    move-result v6

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    .line 62
    const/16 v9, 0x18

    .line 63
    const/4 v10, 0x0

    .line 64
    move v4, v5

    .line 65
    .line 66
    .line 67
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/graphics/ImageBitmapKt;->b(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/selection/HandleImageCache;->f(Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Landroidx/compose/ui/graphics/CanvasKt;->a(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v4}, Landroidx/compose/foundation/text/selection/HandleImageCache;->d(Landroidx/compose/ui/graphics/Canvas;)V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :goto_2
    if-nez v11, :cond_2

    .line 82
    .line 83
    new-instance v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 84
    .line 85
    .line 86
    invoke-direct {v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v11}, Landroidx/compose/foundation/text/selection/HandleImageCache;->e(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    .line 90
    .line 91
    :cond_2
    move-object/from16 v27, v11

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-interface {v12}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    .line 99
    move-result v2

    .line 100
    int-to-float v2, v2

    .line 101
    .line 102
    .line 103
    invoke-interface {v12}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    .line 104
    move-result v4

    .line 105
    int-to-float v4, v4

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v4}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 109
    move-result-wide v4

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a()Landroidx/compose/ui/unit/Density;

    .line 117
    move-result-object v11

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b()Landroidx/compose/ui/unit/LayoutDirection;

    .line 121
    move-result-object v10

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c()Landroidx/compose/ui/graphics/Canvas;

    .line 125
    move-result-object v9

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d()J

    .line 129
    move-result-wide v7

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->j(Landroidx/compose/ui/unit/Density;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->k(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->i(Landroidx/compose/ui/graphics/Canvas;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->l(J)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v13}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 149
    .line 150
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 154
    move-result-wide v15

    .line 155
    .line 156
    const-wide/16 v17, 0x0

    .line 157
    .line 158
    .line 159
    invoke-interface/range {v27 .. v27}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 160
    move-result-wide v19

    .line 161
    .line 162
    const/16 v21, 0x0

    .line 163
    .line 164
    const/16 v22, 0x0

    .line 165
    .line 166
    const/16 v23, 0x0

    .line 167
    .line 168
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->a()I

    .line 172
    move-result v24

    .line 173
    .line 174
    const/16 v25, 0x3a

    .line 175
    .line 176
    const/16 v26, 0x0

    .line 177
    .line 178
    move-object/from16 v14, v27

    .line 179
    .line 180
    .line 181
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/graphics/drawscope/a;->n(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    const-wide v0, 0xff000000L

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 190
    move-result-wide v15

    .line 191
    .line 192
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 196
    move-result-wide v17

    .line 197
    .line 198
    .line 199
    invoke-static {v3, v3}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 200
    move-result-wide v19

    .line 201
    .line 202
    const/16 v24, 0x0

    .line 203
    .line 204
    const/16 v25, 0x78

    .line 205
    .line 206
    .line 207
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/graphics/drawscope/a;->n(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 211
    move-result-wide v1

    .line 212
    .line 213
    .line 214
    invoke-static {v3, v3}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 215
    move-result-wide v4

    .line 216
    const/4 v6, 0x0

    .line 217
    const/4 v14, 0x0

    .line 218
    const/4 v15, 0x0

    .line 219
    .line 220
    const/16 v16, 0x0

    .line 221
    .line 222
    const/16 v17, 0x78

    .line 223
    .line 224
    const/16 v18, 0x0

    .line 225
    .line 226
    move-object/from16 v0, v27

    .line 227
    .line 228
    move/from16 v3, p1

    .line 229
    .line 230
    move-wide/from16 v28, v7

    .line 231
    move-object v7, v14

    .line 232
    move-object v8, v15

    .line 233
    move-object v14, v9

    .line 234
    .line 235
    move/from16 v9, v16

    .line 236
    move-object v15, v10

    .line 237
    .line 238
    move/from16 v10, v17

    .line 239
    .line 240
    move-object/from16 v16, v12

    .line 241
    move-object v12, v11

    .line 242
    .line 243
    move-object/from16 v11, v18

    .line 244
    .line 245
    .line 246
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/drawscope/a;->e(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v13}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 253
    move-result-object v0

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->j(Landroidx/compose/ui/unit/Density;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->k(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->i(Landroidx/compose/ui/graphics/Canvas;)V

    .line 263
    .line 264
    move-wide/from16 v1, v28

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->l(J)V

    .line 268
    return-object v16
.end method

.method public static final f(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/style/ResolvedTextDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "direction"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1;-><init>(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)V

    .line 16
    const/4 p1, 0x1

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p2, v0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->d(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final g(Landroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z
    .locals 1
    .param p0    # Landroidx/compose/ui/text/style/ResolvedTextDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "direction"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    :cond_0
    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 14
    .line 15
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    :cond_1
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method private static final h(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->g(Landroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z

    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->g(Landroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z

    .line 11
    move-result p0

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method
