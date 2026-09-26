.class public final Landroidx/compose/ui/layout/SubcomposeLayoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomposeLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/SubcomposeLayoutKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,766:1\n25#2:767\n251#2,10:777\n36#2:787\n1057#3,6:768\n1057#3,6:788\n76#4:774\n76#4:775\n76#4:776\n*S KotlinDebug\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/SubcomposeLayoutKt\n*L\n76#1:767\n114#1:777,10\n132#1:787\n76#1:768,6\n132#1:788,6\n111#1:774\n112#1:775\n113#1:776\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 7
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "measurePolicy"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, -0x4d634bd0    # -1.824273E-8f

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    and-int/lit8 v0, p4, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    or-int/lit8 v1, p3, 0x6

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    and-int/lit8 v1, p3, 0xe

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    const/4 v1, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x2

    .line 33
    :goto_0
    or-int/2addr v1, p3

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v1, p3

    .line 36
    .line 37
    :goto_1
    and-int/lit8 v2, p4, 0x2

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    or-int/lit8 v1, v1, 0x30

    .line 42
    goto :goto_3

    .line 43
    .line 44
    :cond_3
    and-int/lit8 v2, p3, 0x70

    .line 45
    .line 46
    if-nez v2, :cond_5

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    const/16 v2, 0x20

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_4
    const/16 v2, 0x10

    .line 58
    :goto_2
    or-int/2addr v1, v2

    .line 59
    .line 60
    :cond_5
    :goto_3
    and-int/lit8 v2, v1, 0x5b

    .line 61
    .line 62
    const/16 v3, 0x12

    .line 63
    .line 64
    if-ne v2, v3, :cond_7

    .line 65
    .line 66
    .line 67
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-nez v2, :cond_6

    .line 71
    goto :goto_4

    .line 72
    .line 73
    .line 74
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 75
    goto :goto_5

    .line 76
    .line 77
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 78
    .line 79
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 80
    .line 81
    .line 82
    :cond_8
    const v0, -0x1d58f75c

    .line 83
    .line 84
    .line 85
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    if-ne v0, v2, :cond_9

    .line 98
    .line 99
    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 109
    .line 110
    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 111
    .line 112
    shl-int/lit8 v1, v1, 0x3

    .line 113
    .line 114
    and-int/lit8 v2, v1, 0x70

    .line 115
    .line 116
    or-int/lit8 v2, v2, 0x8

    .line 117
    .line 118
    and-int/lit16 v1, v1, 0x380

    .line 119
    .line 120
    or-int v5, v2, v1

    .line 121
    const/4 v6, 0x0

    .line 122
    move-object v1, v0

    .line 123
    move-object v2, p0

    .line 124
    move-object v3, p1

    .line 125
    move-object v4, p2

    .line 126
    .line 127
    .line 128
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->b(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 129
    .line 130
    .line 131
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 132
    move-result-object p2

    .line 133
    .line 134
    if-nez p2, :cond_a

    .line 135
    goto :goto_6

    .line 136
    .line 137
    :cond_a
    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$2;-><init>(Landroidx/compose/ui/Modifier;Le8/p;II)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 144
    :goto_6
    return-void
.end method

.method public static final b(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 8
    .param p0    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/SubcomposeLayoutState;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "state"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurePolicy"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, -0x1e845847

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    and-int/lit8 v0, p5, 0x2

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 24
    :cond_0
    move-object v2, p1

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static {p3, p1}, Landroidx/compose/runtime/ComposablesKt;->d(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {p3, v2}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    .line 40
    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 57
    move-result-object v5

    .line 58
    .line 59
    .line 60
    invoke-interface {p3, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 64
    .line 65
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->Companion:Landroidx/compose/ui/node/LayoutNode$Companion;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode$Companion;->a()Le8/a;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    .line 72
    const v7, 0x7076b8d0

    .line 73
    .line 74
    .line 75
    invoke-interface {p3, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 79
    move-result-object v7

    .line 80
    .line 81
    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    .line 82
    .line 83
    if-nez v7, :cond_1

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->v()V

    .line 90
    .line 91
    .line 92
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 93
    move-result v7

    .line 94
    .line 95
    if-eqz v7, :cond_2

    .line 96
    .line 97
    new-instance v7, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$$inlined$ComposeNode$1;

    .line 98
    .line 99
    .line 100
    invoke-direct {v7, v6}, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$$inlined$ComposeNode$1;-><init>(Le8/a;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p3, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->c()V

    .line 108
    .line 109
    .line 110
    :goto_0
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 111
    move-result-object v6

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->h()Le8/p;

    .line 115
    move-result-object v7

    .line 116
    .line 117
    .line 118
    invoke-static {v6, p0, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->f()Le8/p;

    .line 122
    move-result-object v7

    .line 123
    .line 124
    .line 125
    invoke-static {v6, v0, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 126
    .line 127
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Le8/p;

    .line 131
    move-result-object v7

    .line 132
    .line 133
    .line 134
    invoke-static {v6, v1, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->g()Le8/p;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    .line 141
    invoke-static {v6, p2, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    .line 148
    invoke-static {v6, v3, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    .line 155
    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    .line 162
    invoke-static {v6, v5, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->d()V

    .line 166
    .line 167
    .line 168
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 169
    .line 170
    .line 171
    const v0, -0x243b094a

    .line 172
    .line 173
    .line 174
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 175
    .line 176
    .line 177
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->b()Z

    .line 178
    move-result v0

    .line 179
    .line 180
    if-nez v0, :cond_3

    .line 181
    .line 182
    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$4;

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$4;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0, p3, p1}, Landroidx/compose/runtime/EffectsKt;->h(Le8/a;Landroidx/compose/runtime/Composer;I)V

    .line 189
    .line 190
    .line 191
    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 192
    .line 193
    const/16 v0, 0x8

    .line 194
    .line 195
    .line 196
    invoke-static {p0, p3, v0}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 200
    .line 201
    .line 202
    const v3, 0x44faf204

    .line 203
    .line 204
    .line 205
    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 209
    move-result v3

    .line 210
    .line 211
    .line 212
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 213
    move-result-object v4

    .line 214
    .line 215
    if-nez v3, :cond_4

    .line 216
    .line 217
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 221
    move-result-object v3

    .line 222
    .line 223
    if-ne v4, v3, :cond_5

    .line 224
    .line 225
    :cond_4
    new-instance v4, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$5$1;

    .line 226
    .line 227
    .line 228
    invoke-direct {v4, v0}, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$5$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 235
    .line 236
    check-cast v4, Le8/l;

    .line 237
    .line 238
    .line 239
    invoke-static {v1, v4, p3, p1}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 240
    .line 241
    .line 242
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 243
    move-result-object p1

    .line 244
    .line 245
    if-nez p1, :cond_6

    .line 246
    goto :goto_1

    .line 247
    .line 248
    :cond_6
    new-instance p3, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$6;

    .line 249
    move-object v0, p3

    .line 250
    move-object v1, p0

    .line 251
    move-object v3, p2

    .line 252
    move v4, p4

    .line 253
    move v5, p5

    .line 254
    .line 255
    .line 256
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$6;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Le8/p;II)V

    .line 257
    .line 258
    .line 259
    invoke-interface {p1, p3}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 260
    :goto_1
    return-void
.end method

.method public static final c(I)Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/FixedCountSubcomposeSlotReusePolicy;-><init>(I)V

    .line 6
    return-object v0
.end method
