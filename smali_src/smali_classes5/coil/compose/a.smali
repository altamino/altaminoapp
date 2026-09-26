.class public final Lcoil/compose/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncImage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncImage.kt\ncoil/compose/AsyncImageKt\n+ 2 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,241:1\n121#2:242\n122#2,5:244\n128#2,6:258\n135#2:267\n76#3:243\n286#4,9:249\n295#4,3:264\n25#4:268\n1057#5,6:269\n*S KotlinDebug\n*F\n+ 1 AsyncImage.kt\ncoil/compose/AsyncImageKt\n*L\n163#1:242\n163#1:244,5\n163#1:258,6\n163#1:267\n163#1:243\n163#1:249,9\n163#1:264,3\n187#1:268\n187#1:269,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Ljava/lang/Object;Ljava/lang/String;Lcoil/e;Landroidx/compose/ui/Modifier;Le8/l;Le8/l;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V
    .locals 19
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcoil/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcoil/e;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "+",
            "Lcoil/compose/b$c;",
            ">;",
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "I",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v12, p12

    move/from16 v14, p14

    const v0, -0x79027051

    move-object/from16 v1, p11

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, v14, 0x8

    if-eqz v2, :cond_0

    .line 2
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    :goto_0
    and-int/lit8 v2, v14, 0x10

    if-eqz v2, :cond_1

    .line 3
    sget-object v2, Lcoil/compose/b;->Companion:Lcoil/compose/b$b;

    invoke-virtual {v2}, Lcoil/compose/b$b;->a()Le8/l;

    move-result-object v2

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p4

    :goto_1
    and-int/lit8 v2, v14, 0x20

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v6, v3

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    :goto_2
    and-int/lit8 v2, v14, 0x40

    if-eqz v2, :cond_3

    .line 4
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    move-result-object v2

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit16 v2, v14, 0x80

    if-eqz v2, :cond_4

    .line 5
    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/ContentScale$Companion;->b()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v2

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit16 v2, v14, 0x100

    if-eqz v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    move v9, v2

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit16 v2, v14, 0x200

    if-eqz v2, :cond_6

    move-object v10, v3

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v2, v14, 0x400

    if-eqz v2, :cond_7

    .line 6
    sget-object v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b()I

    move-result v2

    and-int/lit8 v3, p13, -0xf

    move v11, v2

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    move/from16 v3, p13

    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->O()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "coil.compose.AsyncImage (AsyncImage.kt:116)"

    .line 7
    invoke-static {v0, v12, v3, v2}, Landroidx/compose/runtime/ComposerKt;->Z(IIILjava/lang/String;)V

    :cond_8
    const/16 v0, 0x8

    move-object/from16 v2, p0

    .line 8
    invoke-static {v2, v1, v0}, Lcoil/compose/j;->d(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Lcoil/request/h;

    move-result-object v13

    shr-int/lit8 v15, v12, 0x12

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v0, v15

    invoke-static {v13, v8, v1, v0}, Lcoil/compose/a;->f(Lcoil/request/h;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)Lcoil/request/h;

    move-result-object v0

    shr-int/lit8 v13, v12, 0x6

    and-int/lit16 v15, v13, 0x380

    or-int/lit8 v15, v15, 0x48

    and-int/lit16 v13, v13, 0x1c00

    or-int/2addr v13, v15

    shr-int/lit8 v15, v12, 0x9

    const v16, 0xe000

    and-int v16, v15, v16

    or-int v13, v13, v16

    shl-int/lit8 v3, v3, 0xf

    const/high16 v17, 0x70000

    and-int v3, v3, v17

    or-int/2addr v3, v13

    const/4 v13, 0x0

    move-object/from16 p3, v0

    move-object/from16 p4, p2

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v8

    move/from16 p8, v11

    move-object/from16 p9, v1

    move/from16 p10, v3

    move/from16 p11, v13

    .line 9
    invoke-static/range {p3 .. p11}, Lcoil/compose/c;->d(Ljava/lang/Object;Lcoil/e;Le8/l;Le8/l;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)Lcoil/compose/b;

    move-result-object v3

    .line 10
    invoke-virtual {v0}, Lcoil/request/h;->K()Lcoil/size/j;

    move-result-object v0

    .line 11
    instance-of v13, v0, Lcoil/compose/d;

    if-eqz v13, :cond_9

    .line 12
    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-interface {v4, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_8

    :cond_9
    move-object v0, v4

    :goto_8
    shl-int/lit8 v13, v12, 0x3

    and-int/lit16 v13, v13, 0x380

    and-int/lit16 v2, v15, 0x1c00

    or-int/2addr v2, v13

    or-int v2, v2, v16

    and-int v13, v15, v17

    or-int/2addr v2, v13

    const/high16 v13, 0x380000

    and-int/2addr v13, v15

    or-int/2addr v2, v13

    move-object/from16 p3, v0

    move-object/from16 p4, v3

    move-object/from16 p5, p1

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    move/from16 p11, v2

    .line 13
    invoke-static/range {p3 .. p11}, Lcoil/compose/a;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->O()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->Y()V

    :cond_a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_b

    goto :goto_9

    :cond_b
    new-instance v13, Lcoil/compose/a$a;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v12, p12

    move-object/from16 v18, v13

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcoil/compose/a$a;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcoil/e;Landroidx/compose/ui/Modifier;Le8/l;Le8/l;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IIII)V

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_9
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;I)V
    .locals 13
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x9d0565

    .line 4
    .line 5
    move-object/from16 v1, p7

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->O()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    const/4 v2, -0x1

    .line 17
    .line 18
    const-string v3, "coil.compose.Content (AsyncImage.kt:154)"

    .line 19
    .line 20
    move/from16 v12, p8

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v12, v2, v3}, Landroidx/compose/runtime/ComposerKt;->Z(IIILjava/lang/String;)V

    .line 24
    :goto_0
    move-object v0, p0

    .line 25
    move-object v2, p2

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    move/from16 v12, p8

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-static {p0, p2}, Lcoil/compose/a;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    new-instance v10, Lcoil/compose/e;

    .line 40
    move-object v4, v10

    .line 41
    move-object v5, p1

    .line 42
    .line 43
    move-object/from16 v6, p3

    .line 44
    .line 45
    move-object/from16 v7, p4

    .line 46
    .line 47
    move/from16 v8, p5

    .line 48
    .line 49
    move-object/from16 v9, p6

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v4 .. v9}, Lcoil/compose/e;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v3, v10}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    sget-object v4, Lcoil/compose/a$c;->INSTANCE:Lcoil/compose/a$c;

    .line 59
    .line 60
    .line 61
    const v5, 0x207baf9a

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 88
    move-result-object v7

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 92
    move-result-object v7

    .line 93
    .line 94
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 104
    move-result-object v9

    .line 105
    .line 106
    .line 107
    const v10, 0x53ca7ea5

    .line 108
    .line 109
    .line 110
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 114
    move-result-object v10

    .line 115
    .line 116
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 117
    .line 118
    if-nez v10, :cond_1

    .line 119
    .line 120
    .line 121
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 122
    .line 123
    .line 124
    :cond_1
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->e()V

    .line 125
    .line 126
    .line 127
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 128
    move-result v10

    .line 129
    .line 130
    if-eqz v10, :cond_2

    .line 131
    .line 132
    new-instance v10, Lcoil/compose/a$b;

    .line 133
    .line 134
    .line 135
    invoke-direct {v10, v9}, Lcoil/compose/a$b;-><init>(Le8/a;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 139
    goto :goto_2

    .line 140
    .line 141
    .line 142
    :cond_2
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->c()V

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->L()V

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 149
    move-result-object v9

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 153
    move-result-object v10

    .line 154
    .line 155
    .line 156
    invoke-static {v9, v4, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 160
    move-result-object v4

    .line 161
    .line 162
    .line 163
    invoke-static {v9, v5, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 167
    move-result-object v4

    .line 168
    .line 169
    .line 170
    invoke-static {v9, v6, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 174
    move-result-object v4

    .line 175
    .line 176
    .line 177
    invoke-static {v9, v7, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Le8/p;

    .line 181
    move-result-object v4

    .line 182
    .line 183
    .line 184
    invoke-static {v9, v3, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->o()V

    .line 188
    .line 189
    .line 190
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->d()V

    .line 191
    .line 192
    .line 193
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 194
    .line 195
    .line 196
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->O()Z

    .line 200
    move-result v3

    .line 201
    .line 202
    if-eqz v3, :cond_3

    .line 203
    .line 204
    .line 205
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->Y()V

    .line 206
    .line 207
    .line 208
    :cond_3
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 209
    move-result-object v1

    .line 210
    .line 211
    if-nez v1, :cond_4

    .line 212
    goto :goto_3

    .line 213
    .line 214
    :cond_4
    new-instance v3, Lcoil/compose/a$d;

    .line 215
    move-object v4, v3

    .line 216
    move-object v5, p0

    .line 217
    move-object v6, p1

    .line 218
    move-object v7, p2

    .line 219
    .line 220
    move-object/from16 v8, p3

    .line 221
    .line 222
    move-object/from16 v9, p4

    .line 223
    .line 224
    move/from16 v10, p5

    .line 225
    .line 226
    move-object/from16 v11, p6

    .line 227
    .line 228
    move/from16 v12, p8

    .line 229
    .line 230
    .line 231
    invoke-direct/range {v4 .. v12}, Lcoil/compose/a$d;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v1, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 235
    :goto_3
    return-void
.end method

.method public static final synthetic c(J)Lcoil/size/i;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcoil/compose/a;->e(J)Lcoil/size/i;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 3
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance v0, Lcoil/compose/a$e;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcoil/compose/a$e;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v2, v0, p1, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p0

    .line 15
    :cond_0
    return-object p0
.end method

.method private static final e(J)Lcoil/size/i;
    .locals 3
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->r(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_2

    .line 9
    .line 10
    :cond_0
    new-instance v0, Lcoil/size/i;

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->j(J)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcoil/size/a;->a(I)Lcoil/size/c$a;

    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    sget-object v1, Lcoil/size/c$b;->INSTANCE:Lcoil/size/c$b;

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->i(J)Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 37
    move-result p0

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lcoil/size/a;->a(I)Lcoil/size/c$a;

    .line 41
    move-result-object p0

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    sget-object p0, Lcoil/size/c$b;->INSTANCE:Lcoil/size/c$b;

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-direct {v0, v1, p0}, Lcoil/size/i;-><init>(Lcoil/size/c;Lcoil/size/c;)V

    .line 48
    move-object p0, v0

    .line 49
    :goto_2
    return-object p0
.end method

.method public static final f(Lcoil/request/h;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)Lcoil/request/h;
    .locals 3
    .param p0    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x17fba9d7

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->O()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 v1, -0x1

    .line 14
    .line 15
    const-string v2, "coil.compose.updateRequest (AsyncImage.kt:181)"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->Z(IIILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcoil/request/h;->q()Lcoil/request/c;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Lcoil/request/c;->m()Lcoil/size/j;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    if-nez p3, :cond_3

    .line 29
    .line 30
    sget-object p3, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Landroidx/compose/ui/layout/ContentScale$Companion;->d()Landroidx/compose/ui/layout/FixedScale;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    sget-object p1, Lcoil/size/i;->ORIGINAL:Lcoil/size/i;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcoil/size/k;->a(Lcoil/size/i;)Lcoil/size/j;

    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    const p1, -0x1d58f75c

    .line 51
    .line 52
    .line 53
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 63
    move-result-object p3

    .line 64
    .line 65
    if-ne p1, p3, :cond_2

    .line 66
    .line 67
    new-instance p1, Lcoil/compose/d;

    .line 68
    .line 69
    .line 70
    invoke-direct {p1}, Lcoil/compose/d;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 77
    .line 78
    check-cast p1, Lcoil/size/j;

    .line 79
    :goto_0
    const/4 p3, 0x1

    .line 80
    const/4 v0, 0x0

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v0, p3, v0}, Lcoil/request/h;->R(Lcoil/request/h;Landroid/content/Context;ILjava/lang/Object;)Lcoil/request/h$a;

    .line 84
    move-result-object p0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcoil/request/h$a;->k(Lcoil/size/j;)Lcoil/request/h$a;

    .line 88
    move-result-object p0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcoil/request/h$a;->a()Lcoil/request/h;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->O()Z

    .line 96
    move-result p1

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    .line 101
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->Y()V

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 105
    return-object p0
.end method
