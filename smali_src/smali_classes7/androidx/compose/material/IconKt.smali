.class public final Landroidx/compose/material/IconKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIcon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Icon.kt\nandroidx/compose/material/IconKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,155:1\n76#2:156\n76#2:157\n76#2:165\n36#3:158\n36#3:166\n1057#4,6:159\n1057#4,6:167\n155#5:173\n*S KotlinDebug\n*F\n+ 1 Icon.kt\nandroidx/compose/material/IconKt\n*L\n61#1:156\n90#1:157\n119#1:165\n92#1:158\n124#1:166\n92#1:159,6\n124#1:167,6\n154#1:173\n*E\n"
.end annotation


# static fields
.field private static final DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    int-to-float v1, v1

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->y(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Landroidx/compose/material/IconKt;->DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;

    .line 16
    return-void
.end method

.method public static final a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v9, p0

    .line 3
    .line 4
    move-object/from16 v10, p1

    .line 5
    .line 6
    const-string v0, "painter"

    .line 7
    .line 8
    .line 9
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0x44202ba2

    .line 13
    .line 14
    move-object/from16 v1, p5

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v11

    .line 19
    .line 20
    and-int/lit8 v0, p7, 0x4

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 25
    move-object v12, v0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    move-object/from16 v12, p2

    .line 29
    .line 30
    :goto_0
    and-int/lit8 v0, p7, 0x8

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Ljava/lang/Number;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 60
    move-result v3

    .line 61
    const/4 v4, 0x0

    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    .line 65
    const/16 v7, 0xe

    .line 66
    const/4 v8, 0x0

    .line 67
    .line 68
    .line 69
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 70
    move-result-wide v0

    .line 71
    move-wide v13, v0

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_1
    move-wide/from16 v13, p3

    .line 75
    .line 76
    :goto_1
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 80
    move-result-wide v0

    .line 81
    .line 82
    .line 83
    invoke-static {v13, v14, v0, v1}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 84
    move-result v0

    .line 85
    const/4 v1, 0x0

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    move-object v6, v1

    .line 89
    goto :goto_2

    .line 90
    .line 91
    :cond_2
    sget-object v2, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    .line 92
    const/4 v5, 0x0

    .line 93
    const/4 v6, 0x2

    .line 94
    const/4 v7, 0x0

    .line 95
    move-wide v3, v13

    .line 96
    .line 97
    .line 98
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->b(Landroidx/compose/ui/graphics/ColorFilter$Companion;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/ColorFilter;

    .line 99
    move-result-object v0

    .line 100
    move-object v6, v0

    .line 101
    .line 102
    .line 103
    :goto_2
    const v0, 0x5c3b3a55

    .line 104
    .line 105
    .line 106
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 107
    const/4 v15, 0x0

    .line 108
    .line 109
    if-eqz v10, :cond_5

    .line 110
    .line 111
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 112
    .line 113
    .line 114
    const v2, 0x44faf204

    .line 115
    .line 116
    .line 117
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 121
    move-result v2

    .line 122
    .line 123
    .line 124
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    if-nez v2, :cond_3

    .line 128
    .line 129
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    if-ne v3, v2, :cond_4

    .line 136
    .line 137
    :cond_3
    new-instance v3, Landroidx/compose/material/IconKt$Icon$semantics$1$1;

    .line 138
    .line 139
    .line 140
    invoke-direct {v3, v10}, Landroidx/compose/material/IconKt$Icon$semantics$1$1;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 147
    .line 148
    check-cast v3, Le8/l;

    .line 149
    const/4 v2, 0x1

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v15, v3, v2, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 153
    move-result-object v0

    .line 154
    :goto_3
    move-object v8, v0

    .line 155
    goto :goto_4

    .line 156
    .line 157
    :cond_5
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 158
    goto :goto_3

    .line 159
    .line 160
    .line 161
    :goto_4
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 162
    .line 163
    .line 164
    invoke-static {v12}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->d(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v9}, Landroidx/compose/material/IconKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;)Landroidx/compose/ui/Modifier;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->b()Landroidx/compose/ui/layout/ContentScale;

    .line 175
    move-result-object v4

    .line 176
    const/4 v2, 0x0

    .line 177
    const/4 v3, 0x0

    .line 178
    const/4 v5, 0x0

    .line 179
    .line 180
    const/16 v7, 0x16

    .line 181
    .line 182
    const/16 v16, 0x0

    .line 183
    .line 184
    move-object/from16 v1, p0

    .line 185
    move-object v15, v8

    .line 186
    .line 187
    move-object/from16 v8, v16

    .line 188
    .line 189
    .line 190
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/draw/PainterModifierKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, v15}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 195
    move-result-object v0

    .line 196
    const/4 v1, 0x0

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v11, v1}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 200
    .line 201
    .line 202
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 203
    move-result-object v8

    .line 204
    .line 205
    if-nez v8, :cond_6

    .line 206
    goto :goto_5

    .line 207
    .line 208
    :cond_6
    new-instance v11, Landroidx/compose/material/IconKt$Icon$1;

    .line 209
    move-object v0, v11

    .line 210
    .line 211
    move-object/from16 v1, p0

    .line 212
    .line 213
    move-object/from16 v2, p1

    .line 214
    move-object v3, v12

    .line 215
    move-wide v4, v13

    .line 216
    .line 217
    move/from16 v6, p6

    .line 218
    .line 219
    move/from16 v7, p7

    .line 220
    .line 221
    .line 222
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/IconKt$Icon$1;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JII)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v8, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 226
    :goto_5
    return-void
.end method

.method public static final b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0    # Landroidx/compose/ui/graphics/vector/ImageVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move/from16 v1, p6

    .line 7
    .line 8
    const-string v2, "imageVector"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, -0x2fbc0c6f

    .line 15
    .line 16
    .line 17
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    and-int/lit8 v2, p7, 0x4

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    move-object/from16 v2, p2

    .line 27
    .line 28
    :goto_0
    and-int/lit8 v3, p7, 0x8

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 44
    move-result-wide v9

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    check-cast v3, Ljava/lang/Number;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 58
    move-result v11

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v13, 0x0

    .line 61
    const/4 v14, 0x0

    .line 62
    .line 63
    const/16 v15, 0xe

    .line 64
    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    .line 68
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 69
    move-result-wide v3

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_1
    move-wide/from16 v3, p3

    .line 73
    .line 74
    :goto_1
    and-int/lit8 v5, v1, 0xe

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v8, v5}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    sget v5, Landroidx/compose/ui/graphics/vector/VectorPainter;->$stable:I

    .line 81
    .line 82
    and-int/lit8 v6, v1, 0x70

    .line 83
    or-int/2addr v5, v6

    .line 84
    .line 85
    and-int/lit16 v6, v1, 0x380

    .line 86
    or-int/2addr v5, v6

    .line 87
    .line 88
    and-int/lit16 v1, v1, 0x1c00

    .line 89
    .line 90
    or-int v6, v5, v1

    .line 91
    const/4 v7, 0x0

    .line 92
    .line 93
    move-object/from16 v1, p1

    .line 94
    .line 95
    move-object/from16 v5, p5

    .line 96
    .line 97
    .line 98
    invoke-static/range {v0 .. v7}, Landroidx/compose/material/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 99
    .line 100
    .line 101
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 102
    return-void
.end method

.method private static final c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;)Landroidx/compose/ui/Modifier;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-object v2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Size;->f(JJ)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->k()J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/compose/material/IconKt;->d(J)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/material/IconKt;->DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method private static final d(J)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 14
    move-result p0

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 18
    move-result p0

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method
