.class final Landroidx/compose/material/ChipKt$Chip$2$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ChipKt$Chip$2$1;->a(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Chip.kt\nandroidx/compose/material/ChipKt$Chip$2$1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,752:1\n155#2:753\n79#3,2:754\n81#3:782\n85#3:787\n75#4:756\n76#4,11:758\n89#4:786\n76#5:757\n460#6,13:769\n473#6,3:783\n76#7:788\n*S KotlinDebug\n*F\n+ 1 Chip.kt\nandroidx/compose/material/ChipKt$Chip$2$1$1\n*L\n122#1:753\n114#1:754,2\n114#1:782\n114#1:787\n114#1:756\n114#1:758,11\n114#1:786\n114#1:757\n114#1:769,13\n114#1:783,3\n130#1:788\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $colors:Landroidx/compose/material/ChipColors;

.field final synthetic $content:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $leadingIcon:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/p;Landroidx/compose/material/ChipColors;ZILe8/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/material/ChipColors;",
            "ZI",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ChipKt$Chip$2$1$1;->$leadingIcon:Le8/p;

    iput-object p2, p0, Landroidx/compose/material/ChipKt$Chip$2$1$1;->$colors:Landroidx/compose/material/ChipColors;

    iput-boolean p3, p0, Landroidx/compose/material/ChipKt$Chip$2$1$1;->$enabled:Z

    iput p4, p0, Landroidx/compose/material/ChipKt$Chip$2$1$1;->$$dirty:I

    iput-object p5, p0, Landroidx/compose/material/ChipKt$Chip$2$1$1;->$content:Le8/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method private static final b(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 17
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
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    and-int/lit8 v2, p2, 0xb

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    if-ne v2, v3, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_1
    :goto_0
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 24
    .line 25
    sget-object v4, Landroidx/compose/material/ChipDefaults;->INSTANCE:Landroidx/compose/material/ChipDefaults;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Landroidx/compose/material/ChipDefaults;->c()F

    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x1

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v6, v4, v7, v5}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 36
    move-result-object v8

    .line 37
    .line 38
    iget-object v4, v0, Landroidx/compose/material/ChipKt$Chip$2$1$1;->$leadingIcon:Le8/p;

    .line 39
    const/4 v5, 0x0

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroidx/compose/material/ChipKt;->e()F

    .line 45
    move-result v4

    .line 46
    :goto_1
    move v9, v4

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    int-to-float v4, v5

    .line 49
    .line 50
    .line 51
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 52
    move-result v4

    .line 53
    goto :goto_1

    .line 54
    :goto_2
    const/4 v10, 0x0

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroidx/compose/material/ChipKt;->e()F

    .line 58
    move-result v11

    .line 59
    const/4 v12, 0x0

    .line 60
    .line 61
    const/16 v13, 0xa

    .line 62
    const/4 v14, 0x0

    .line 63
    .line 64
    .line 65
    invoke-static/range {v8 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 72
    move-result-object v6

    .line 73
    .line 74
    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 78
    move-result-object v8

    .line 79
    .line 80
    iget-object v9, v0, Landroidx/compose/material/ChipKt$Chip$2$1$1;->$leadingIcon:Le8/p;

    .line 81
    .line 82
    iget-object v10, v0, Landroidx/compose/material/ChipKt$Chip$2$1$1;->$colors:Landroidx/compose/material/ChipColors;

    .line 83
    .line 84
    iget-boolean v11, v0, Landroidx/compose/material/ChipKt$Chip$2$1$1;->$enabled:Z

    .line 85
    .line 86
    iget v12, v0, Landroidx/compose/material/ChipKt$Chip$2$1$1;->$$dirty:I

    .line 87
    .line 88
    iget-object v13, v0, Landroidx/compose/material/ChipKt$Chip$2$1$1;->$content:Le8/q;

    .line 89
    .line 90
    .line 91
    const v14, 0x2952b718

    .line 92
    .line 93
    .line 94
    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 95
    .line 96
    const/16 v14, 0x36

    .line 97
    .line 98
    .line 99
    invoke-static {v6, v8, v1, v14}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 100
    move-result-object v6

    .line 101
    .line 102
    .line 103
    const v8, -0x4ee9b9da

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 110
    move-result-object v8

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 114
    move-result-object v8

    .line 115
    .line 116
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 120
    move-result-object v14

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 124
    move-result-object v14

    .line 125
    .line 126
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 127
    .line 128
    .line 129
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 130
    move-result-object v15

    .line 131
    .line 132
    .line 133
    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 134
    move-result-object v15

    .line 135
    .line 136
    check-cast v15, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 137
    .line 138
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 142
    move-result-object v7

    .line 143
    .line 144
    .line 145
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 146
    move-result-object v4

    .line 147
    .line 148
    .line 149
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 150
    move-result-object v3

    .line 151
    .line 152
    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    .line 153
    .line 154
    if-nez v3, :cond_3

    .line 155
    .line 156
    .line 157
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 158
    .line 159
    .line 160
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 161
    .line 162
    .line 163
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 164
    move-result v3

    .line 165
    .line 166
    if-eqz v3, :cond_4

    .line 167
    .line 168
    .line 169
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 170
    goto :goto_3

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 174
    .line 175
    .line 176
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 177
    .line 178
    .line 179
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 184
    move-result-object v7

    .line 185
    .line 186
    .line 187
    invoke-static {v3, v6, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 191
    move-result-object v6

    .line 192
    .line 193
    .line 194
    invoke-static {v3, v8, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 198
    move-result-object v6

    .line 199
    .line 200
    .line 201
    invoke-static {v3, v14, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 205
    move-result-object v6

    .line 206
    .line 207
    .line 208
    invoke-static {v3, v15, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 209
    .line 210
    .line 211
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 212
    .line 213
    .line 214
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 215
    move-result-object v3

    .line 216
    .line 217
    .line 218
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 219
    move-result-object v3

    .line 220
    .line 221
    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    move-result-object v6

    .line 224
    .line 225
    .line 226
    invoke-interface {v4, v3, v1, v6}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    const v3, 0x7ab4aae9

    .line 230
    .line 231
    .line 232
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 233
    .line 234
    .line 235
    const v3, -0x286e2e7f

    .line 236
    .line 237
    .line 238
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 239
    .line 240
    sget-object v3, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 241
    .line 242
    .line 243
    const v4, 0x38b63fe4

    .line 244
    .line 245
    .line 246
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 247
    .line 248
    .line 249
    const v4, 0x7c435a8a

    .line 250
    .line 251
    .line 252
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 253
    const/4 v4, 0x6

    .line 254
    .line 255
    if-eqz v9, :cond_5

    .line 256
    .line 257
    .line 258
    invoke-static {}, Landroidx/compose/material/ChipKt;->g()F

    .line 259
    move-result v6

    .line 260
    .line 261
    .line 262
    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/SizeKt;->D(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 263
    move-result-object v6

    .line 264
    .line 265
    .line 266
    invoke-static {v6, v1, v4}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 267
    .line 268
    shr-int/lit8 v6, v12, 0x6

    .line 269
    .line 270
    and-int/lit8 v6, v6, 0xe

    .line 271
    .line 272
    shr-int/lit8 v7, v12, 0xf

    .line 273
    .line 274
    and-int/lit8 v7, v7, 0x70

    .line 275
    or-int/2addr v6, v7

    .line 276
    .line 277
    .line 278
    invoke-interface {v10, v11, v1, v6}, Landroidx/compose/material/ChipColors;->c(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 279
    move-result-object v6

    .line 280
    const/4 v7, 0x2

    .line 281
    .line 282
    new-array v7, v7, [Landroidx/compose/runtime/ProvidedValue;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 286
    move-result-object v8

    .line 287
    .line 288
    .line 289
    invoke-static {v6}, Landroidx/compose/material/ChipKt$Chip$2$1$1;->b(Landroidx/compose/runtime/State;)J

    .line 290
    move-result-wide v10

    .line 291
    .line 292
    .line 293
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 294
    move-result-object v10

    .line 295
    .line 296
    .line 297
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 298
    move-result-object v8

    .line 299
    .line 300
    aput-object v8, v7, v5

    .line 301
    .line 302
    .line 303
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 304
    move-result-object v5

    .line 305
    .line 306
    .line 307
    invoke-static {v6}, Landroidx/compose/material/ChipKt$Chip$2$1$1;->b(Landroidx/compose/runtime/State;)J

    .line 308
    move-result-wide v10

    .line 309
    .line 310
    .line 311
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 312
    move-result v6

    .line 313
    .line 314
    .line 315
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 316
    move-result-object v6

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 320
    move-result-object v5

    .line 321
    const/4 v6, 0x1

    .line 322
    .line 323
    aput-object v5, v7, v6

    .line 324
    .line 325
    shr-int/lit8 v5, v12, 0x12

    .line 326
    .line 327
    and-int/lit8 v5, v5, 0x70

    .line 328
    .line 329
    or-int/lit8 v5, v5, 0x8

    .line 330
    .line 331
    .line 332
    invoke-static {v7, v9, v1, v5}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 333
    .line 334
    .line 335
    invoke-static {}, Landroidx/compose/material/ChipKt;->f()F

    .line 336
    move-result v5

    .line 337
    .line 338
    .line 339
    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->D(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 340
    move-result-object v2

    .line 341
    .line 342
    .line 343
    invoke-static {v2, v1, v4}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 344
    .line 345
    .line 346
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 347
    .line 348
    shr-int/lit8 v2, v12, 0x15

    .line 349
    .line 350
    and-int/lit8 v2, v2, 0x70

    .line 351
    or-int/2addr v2, v4

    .line 352
    .line 353
    .line 354
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    move-result-object v2

    .line 356
    .line 357
    .line 358
    invoke-interface {v13, v3, v1, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 362
    .line 363
    .line 364
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 365
    .line 366
    .line 367
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 368
    .line 369
    .line 370
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 371
    .line 372
    .line 373
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 374
    .line 375
    .line 376
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 377
    :goto_4
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ChipKt$Chip$2$1$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
