.class public final Landroidx/compose/foundation/layout/BoxKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 2 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,287:1\n75#2:288\n76#2,11:290\n89#2:317\n75#2:326\n76#2,11:328\n89#2:355\n76#3:289\n76#3:327\n460#4,16:301\n50#4:318\n49#4:319\n460#4,16:339\n1057#5,6:320\n*S KotlinDebug\n*F\n+ 1 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n*L\n72#1:288\n72#1:290,11\n72#1:317\n201#1:326\n201#1:328,11\n201#1:355\n72#1:289\n201#1:327\n72#1:301,16\n87#1:318\n87#1:319\n201#1:339,16\n87#1:320,6\n*E\n"
.end annotation


# static fields
.field private static final DefaultBoxMeasurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EmptyBoxMeasurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sput-object v0, Landroidx/compose/foundation/layout/BoxKt;->DefaultBoxMeasurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;->INSTANCE:Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;

    .line 16
    .line 17
    sput-object v0, Landroidx/compose/foundation/layout/BoxKt;->EmptyBoxMeasurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 18
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 10
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
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
    .line 8
    const v0, -0xc96ce69

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    and-int/lit8 v0, p2, 0xe

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    or-int/2addr v0, p2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, p2

    .line 30
    .line 31
    :goto_1
    and-int/lit8 v2, v0, 0xb

    .line 32
    .line 33
    if-ne v2, v1, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    goto :goto_2

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_3
    :goto_2
    sget-object v2, Landroidx/compose/foundation/layout/BoxKt;->EmptyBoxMeasurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 48
    .line 49
    shl-int/lit8 v0, v0, 0x3

    .line 50
    .line 51
    and-int/lit8 v0, v0, 0x70

    .line 52
    .line 53
    or-int/lit16 v0, v0, 0x180

    .line 54
    .line 55
    .line 56
    const v3, -0x4ee9b9da

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 83
    move-result-object v5

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 87
    move-result-object v5

    .line 88
    .line 89
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 90
    .line 91
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 95
    move-result-object v7

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 99
    move-result-object v8

    .line 100
    .line 101
    shl-int/lit8 v0, v0, 0x9

    .line 102
    .line 103
    and-int/lit16 v0, v0, 0x1c00

    .line 104
    .line 105
    or-int/lit8 v0, v0, 0x6

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 109
    move-result-object v9

    .line 110
    .line 111
    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    .line 112
    .line 113
    if-nez v9, :cond_4

    .line 114
    .line 115
    .line 116
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 123
    move-result v9

    .line 124
    .line 125
    if-eqz v9, :cond_5

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 129
    goto :goto_3

    .line 130
    .line 131
    .line 132
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 133
    .line 134
    .line 135
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 139
    move-result-object v7

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 143
    move-result-object v9

    .line 144
    .line 145
    .line 146
    invoke-static {v7, v2, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    .line 153
    invoke-static {v7, v3, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    .line 160
    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    invoke-static {v7, v5, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 171
    .line 172
    .line 173
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    .line 177
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 178
    move-result-object v2

    .line 179
    .line 180
    shr-int/lit8 v3, v0, 0x3

    .line 181
    .line 182
    and-int/lit8 v3, v3, 0x70

    .line 183
    .line 184
    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v3

    .line 187
    .line 188
    .line 189
    invoke-interface {v8, v2, p1, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    const v2, 0x7ab4aae9

    .line 193
    .line 194
    .line 195
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 196
    .line 197
    shr-int/lit8 v0, v0, 0x9

    .line 198
    .line 199
    .line 200
    const v2, 0x3cde39c0

    .line 201
    .line 202
    .line 203
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 204
    .line 205
    and-int/lit8 v0, v0, 0xa

    .line 206
    .line 207
    if-ne v0, v1, :cond_7

    .line 208
    .line 209
    .line 210
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 211
    move-result v0

    .line 212
    .line 213
    if-nez v0, :cond_6

    .line 214
    goto :goto_4

    .line 215
    .line 216
    .line 217
    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 218
    .line 219
    .line 220
    :cond_7
    :goto_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 221
    .line 222
    .line 223
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 224
    .line 225
    .line 226
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 227
    .line 228
    .line 229
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 230
    .line 231
    .line 232
    :goto_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    if-nez p1, :cond_8

    .line 236
    goto :goto_6

    .line 237
    .line 238
    :cond_8
    new-instance v0, Landroidx/compose/foundation/layout/BoxKt$Box$3;

    .line 239
    .line 240
    .line 241
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/layout/BoxKt$Box$3;-><init>(Landroidx/compose/ui/Modifier;I)V

    .line 242
    .line 243
    .line 244
    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 245
    :goto_6
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/ui/layout/Measurable;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/BoxKt;->f(Landroidx/compose/ui/layout/Measurable;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/LayoutDirection;IILandroidx/compose/ui/Alignment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/BoxKt;->g(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/LayoutDirection;IILandroidx/compose/ui/Alignment;)V

    .line 4
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1
    .param p0    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "alignment"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;-><init>(ZLandroidx/compose/ui/Alignment;)V

    .line 11
    return-object v0
.end method

.method private static final e(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/BoxChildData;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->e()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    instance-of v0, p0, Landroidx/compose/foundation/layout/BoxChildData;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/foundation/layout/BoxChildData;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method private static final f(Landroidx/compose/ui/layout/Measurable;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/BoxKt;->e(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/BoxChildData;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/BoxChildData;->b()Z

    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method private static final g(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/LayoutDirection;IILandroidx/compose/ui/Alignment;)V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/compose/foundation/layout/BoxKt;->e(Landroidx/compose/ui/layout/Measurable;)Landroidx/compose/foundation/layout/BoxChildData;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/BoxChildData;->a()Landroidx/compose/ui/Alignment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_1
    :goto_0
    move-object/from16 v1, p6

    .line 18
    .line 19
    .line 20
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 29
    move-result-wide v2

    .line 30
    .line 31
    .line 32
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 33
    move-result-wide v4

    .line 34
    .line 35
    move-object/from16 v6, p3

    .line 36
    .line 37
    .line 38
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 39
    move-result-wide v8

    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v11, 0x2

    .line 42
    const/4 v12, 0x0

    .line 43
    move-object v6, p0

    .line 44
    move-object v7, p1

    .line 45
    .line 46
    .line 47
    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public static final h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1
    .param p0    # Landroidx/compose/ui/Alignment;
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
    const-string p3, "alignment"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x35e7844

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    sget-object p3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result p3

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    sget-object p0, Landroidx/compose/foundation/layout/BoxKt;->DefaultBoxMeasurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    .line 35
    const v0, 0x1e7b2b64

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 46
    move-result p3

    .line 47
    or-int/2addr p3, v0

    .line 48
    .line 49
    .line 50
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-nez p3, :cond_1

    .line 54
    .line 55
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 59
    move-result-object p3

    .line 60
    .line 61
    if-ne v0, p3, :cond_2

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 72
    move-object p0, v0

    .line 73
    .line 74
    check-cast p0, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 78
    return-object p0
.end method
