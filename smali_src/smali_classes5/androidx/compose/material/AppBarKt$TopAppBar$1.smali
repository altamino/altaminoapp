.class final Landroidx/compose/material/AppBarKt$TopAppBar$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AppBarKt;->d(Le8/p;Landroidx/compose/ui/Modifier;Le8/p;Le8/q;JJFLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarKt$TopAppBar$1\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,547:1\n75#2,6:548\n81#2:580\n85#2:585\n75#2,6:586\n81#2:618\n85#2:623\n75#3:554\n76#3,11:556\n89#3:584\n75#3:592\n76#3,11:594\n89#3:622\n76#4:555\n76#4:593\n460#5,13:567\n473#5,3:581\n460#5,13:605\n473#5,3:619\n*S KotlinDebug\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarKt$TopAppBar$1\n*L\n97#1:548,6\n97#1:580\n97#1:585\n105#1:586,6\n105#1:618\n105#1:623\n97#1:554\n97#1:556,11\n97#1:584\n105#1:592\n105#1:594,11\n105#1:622\n97#1:555\n105#1:593\n97#1:567,13\n97#1:581,3\n105#1:605,13\n105#1:619,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $actions:Le8/q;
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

.field final synthetic $navigationIcon:Le8/p;
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

.field final synthetic $title:Le8/p;
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
.method constructor <init>(Le8/p;ILe8/p;Le8/q;)V
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
            ">;I",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
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
    iput-object p1, p0, Landroidx/compose/material/AppBarKt$TopAppBar$1;->$navigationIcon:Le8/p;

    iput p2, p0, Landroidx/compose/material/AppBarKt$TopAppBar$1;->$$dirty:I

    iput-object p3, p0, Landroidx/compose/material/AppBarKt$TopAppBar$1;->$title:Le8/p;

    iput-object p4, p0, Landroidx/compose/material/AppBarKt$TopAppBar$1;->$actions:Le8/q;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .param p1    # Landroidx/compose/foundation/layout/RowScope;
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

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v7, p2

    .line 7
    .line 8
    const-string v2, "$this$AppBar"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    and-int/lit8 v2, p3, 0xe

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x2

    .line 25
    .line 26
    :goto_0
    or-int v2, p3, v2

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    move/from16 v2, p3

    .line 30
    .line 31
    :goto_1
    and-int/lit8 v2, v2, 0x5b

    .line 32
    .line 33
    const/16 v3, 0x12

    .line 34
    .line 35
    if-ne v2, v3, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_3
    :goto_2
    iget-object v2, v0, Landroidx/compose/material/AppBarKt$TopAppBar$1;->$navigationIcon:Le8/p;

    .line 50
    .line 51
    .line 52
    const v8, -0x286e2e7f

    .line 53
    .line 54
    .line 55
    const v9, 0x7ab4aae9

    .line 56
    .line 57
    .line 58
    const v10, -0x4ee9b9da

    .line 59
    .line 60
    .line 61
    const v11, 0x2952b718

    .line 62
    .line 63
    const/16 v12, 0x30

    .line 64
    const/4 v13, 0x0

    .line 65
    const/4 v14, 0x6

    .line 66
    const/4 v15, 0x1

    .line 67
    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    .line 71
    const v2, -0x1e90e66b

    .line 72
    .line 73
    .line 74
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroidx/compose/material/AppBarKt;->k()Landroidx/compose/ui/Modifier;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v7, v14}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 82
    .line 83
    .line 84
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    .line 89
    :cond_4
    const v2, -0x1e90e630

    .line 90
    .line 91
    .line 92
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroidx/compose/material/AppBarKt;->j()Landroidx/compose/ui/Modifier;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    iget-object v4, v0, Landroidx/compose/material/AppBarKt$TopAppBar$1;->$navigationIcon:Le8/p;

    .line 105
    .line 106
    iget v5, v0, Landroidx/compose/material/AppBarKt$TopAppBar$1;->$$dirty:I

    .line 107
    .line 108
    .line 109
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 110
    .line 111
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 115
    move-result-object v6

    .line 116
    .line 117
    .line 118
    invoke-static {v6, v3, v7, v12}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    .line 122
    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 126
    move-result-object v6

    .line 127
    .line 128
    .line 129
    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 130
    move-result-object v6

    .line 131
    .line 132
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 136
    move-result-object v10

    .line 137
    .line 138
    .line 139
    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 140
    move-result-object v10

    .line 141
    .line 142
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 143
    .line 144
    .line 145
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 146
    move-result-object v12

    .line 147
    .line 148
    .line 149
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 150
    move-result-object v12

    .line 151
    .line 152
    check-cast v12, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 153
    .line 154
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 158
    move-result-object v11

    .line 159
    .line 160
    .line 161
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    .line 165
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 166
    move-result-object v14

    .line 167
    .line 168
    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    .line 169
    .line 170
    if-nez v14, :cond_5

    .line 171
    .line 172
    .line 173
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 174
    .line 175
    .line 176
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 177
    .line 178
    .line 179
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 180
    move-result v14

    .line 181
    .line 182
    if-eqz v14, :cond_6

    .line 183
    .line 184
    .line 185
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 186
    goto :goto_3

    .line 187
    .line 188
    .line 189
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 190
    .line 191
    .line 192
    :goto_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 193
    .line 194
    .line 195
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 196
    move-result-object v11

    .line 197
    .line 198
    .line 199
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 200
    move-result-object v14

    .line 201
    .line 202
    .line 203
    invoke-static {v11, v3, v14}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 207
    move-result-object v3

    .line 208
    .line 209
    .line 210
    invoke-static {v11, v6, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 214
    move-result-object v3

    .line 215
    .line 216
    .line 217
    invoke-static {v11, v10, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 221
    move-result-object v3

    .line 222
    .line 223
    .line 224
    invoke-static {v11, v12, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 225
    .line 226
    .line 227
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 228
    .line 229
    .line 230
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 231
    move-result-object v3

    .line 232
    .line 233
    .line 234
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 235
    move-result-object v3

    .line 236
    .line 237
    .line 238
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    move-result-object v6

    .line 240
    .line 241
    .line 242
    invoke-interface {v2, v3, v7, v6}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 249
    .line 250
    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 251
    .line 252
    .line 253
    const v2, 0x588cbb7a

    .line 254
    .line 255
    .line 256
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 257
    .line 258
    new-array v2, v15, [Landroidx/compose/runtime/ProvidedValue;

    .line 259
    .line 260
    .line 261
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 262
    move-result-object v3

    .line 263
    .line 264
    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 265
    const/4 v10, 0x6

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v7, v10}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;I)F

    .line 269
    move-result v6

    .line 270
    .line 271
    .line 272
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 273
    move-result-object v6

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 277
    move-result-object v3

    .line 278
    .line 279
    aput-object v3, v2, v13

    .line 280
    .line 281
    shr-int/lit8 v3, v5, 0x3

    .line 282
    .line 283
    and-int/lit8 v3, v3, 0x70

    .line 284
    .line 285
    or-int/lit8 v3, v3, 0x8

    .line 286
    .line 287
    .line 288
    invoke-static {v2, v4, v7, v3}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 289
    .line 290
    .line 291
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 292
    .line 293
    .line 294
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 295
    .line 296
    .line 297
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 298
    .line 299
    .line 300
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 301
    .line 302
    .line 303
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 304
    .line 305
    .line 306
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 307
    .line 308
    .line 309
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 310
    .line 311
    :goto_4
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 312
    const/4 v3, 0x0

    .line 313
    const/4 v4, 0x0

    .line 314
    .line 315
    .line 316
    invoke-static {v2, v3, v15, v4}, Landroidx/compose/foundation/layout/SizeKt;->j(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 317
    move-result-object v2

    .line 318
    .line 319
    const/high16 v3, 0x3f800000    # 1.0f

    .line 320
    const/4 v4, 0x0

    .line 321
    const/4 v5, 0x2

    .line 322
    const/4 v6, 0x0

    .line 323
    .line 324
    move-object/from16 v1, p1

    .line 325
    .line 326
    .line 327
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/d;->a(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 328
    move-result-object v1

    .line 329
    .line 330
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 334
    move-result-object v2

    .line 335
    .line 336
    iget-object v3, v0, Landroidx/compose/material/AppBarKt$TopAppBar$1;->$title:Le8/p;

    .line 337
    .line 338
    iget v4, v0, Landroidx/compose/material/AppBarKt$TopAppBar$1;->$$dirty:I

    .line 339
    .line 340
    .line 341
    const v5, 0x2952b718

    .line 342
    .line 343
    .line 344
    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 345
    .line 346
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 350
    move-result-object v5

    .line 351
    .line 352
    const/16 v6, 0x30

    .line 353
    .line 354
    .line 355
    invoke-static {v5, v2, v7, v6}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 356
    move-result-object v2

    .line 357
    .line 358
    .line 359
    const v5, -0x4ee9b9da

    .line 360
    .line 361
    .line 362
    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 363
    .line 364
    .line 365
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 366
    move-result-object v5

    .line 367
    .line 368
    .line 369
    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 370
    move-result-object v5

    .line 371
    .line 372
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 373
    .line 374
    .line 375
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 376
    move-result-object v6

    .line 377
    .line 378
    .line 379
    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 380
    move-result-object v6

    .line 381
    .line 382
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 383
    .line 384
    .line 385
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 386
    move-result-object v10

    .line 387
    .line 388
    .line 389
    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 390
    move-result-object v10

    .line 391
    .line 392
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 393
    .line 394
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 398
    move-result-object v12

    .line 399
    .line 400
    .line 401
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 402
    move-result-object v1

    .line 403
    .line 404
    .line 405
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 406
    move-result-object v14

    .line 407
    .line 408
    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    .line 409
    .line 410
    if-nez v14, :cond_7

    .line 411
    .line 412
    .line 413
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 414
    .line 415
    .line 416
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 417
    .line 418
    .line 419
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 420
    move-result v14

    .line 421
    .line 422
    if-eqz v14, :cond_8

    .line 423
    .line 424
    .line 425
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 426
    goto :goto_5

    .line 427
    .line 428
    .line 429
    :cond_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 430
    .line 431
    .line 432
    :goto_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 433
    .line 434
    .line 435
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 436
    move-result-object v12

    .line 437
    .line 438
    .line 439
    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 440
    move-result-object v14

    .line 441
    .line 442
    .line 443
    invoke-static {v12, v2, v14}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 447
    move-result-object v2

    .line 448
    .line 449
    .line 450
    invoke-static {v12, v5, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 454
    move-result-object v2

    .line 455
    .line 456
    .line 457
    invoke-static {v12, v6, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 461
    move-result-object v2

    .line 462
    .line 463
    .line 464
    invoke-static {v12, v10, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 465
    .line 466
    .line 467
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 468
    .line 469
    .line 470
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 471
    move-result-object v2

    .line 472
    .line 473
    .line 474
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 475
    move-result-object v2

    .line 476
    .line 477
    .line 478
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    move-result-object v5

    .line 480
    .line 481
    .line 482
    invoke-interface {v1, v2, v7, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 486
    .line 487
    .line 488
    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 489
    .line 490
    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 491
    .line 492
    .line 493
    const v1, 0x9819f9e

    .line 494
    .line 495
    .line 496
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 497
    .line 498
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 499
    const/4 v2, 0x6

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1, v7, v2}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 503
    move-result-object v1

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1}, Landroidx/compose/material/Typography;->e()Landroidx/compose/ui/text/TextStyle;

    .line 507
    move-result-object v1

    .line 508
    .line 509
    new-instance v2, Landroidx/compose/material/AppBarKt$TopAppBar$1$2$1;

    .line 510
    .line 511
    .line 512
    invoke-direct {v2, v3, v4}, Landroidx/compose/material/AppBarKt$TopAppBar$1$2$1;-><init>(Le8/p;I)V

    .line 513
    .line 514
    .line 515
    const v3, -0x787deb73

    .line 516
    .line 517
    .line 518
    invoke-static {v7, v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 519
    move-result-object v2

    .line 520
    .line 521
    const/16 v3, 0x30

    .line 522
    .line 523
    .line 524
    invoke-static {v1, v2, v7, v3}, Landroidx/compose/material/TextKt;->a(Landroidx/compose/ui/text/TextStyle;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 525
    .line 526
    .line 527
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 528
    .line 529
    .line 530
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 531
    .line 532
    .line 533
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 534
    .line 535
    .line 536
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 537
    .line 538
    .line 539
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 540
    .line 541
    .line 542
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 543
    .line 544
    new-array v1, v15, [Landroidx/compose/runtime/ProvidedValue;

    .line 545
    .line 546
    .line 547
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 548
    move-result-object v2

    .line 549
    .line 550
    sget-object v3, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 551
    const/4 v4, 0x6

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3, v7, v4}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    .line 555
    move-result v3

    .line 556
    .line 557
    .line 558
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 559
    move-result-object v3

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 563
    move-result-object v2

    .line 564
    .line 565
    aput-object v2, v1, v13

    .line 566
    .line 567
    new-instance v2, Landroidx/compose/material/AppBarKt$TopAppBar$1$3;

    .line 568
    .line 569
    iget-object v3, v0, Landroidx/compose/material/AppBarKt$TopAppBar$1;->$actions:Le8/q;

    .line 570
    .line 571
    iget v4, v0, Landroidx/compose/material/AppBarKt$TopAppBar$1;->$$dirty:I

    .line 572
    .line 573
    .line 574
    invoke-direct {v2, v3, v4}, Landroidx/compose/material/AppBarKt$TopAppBar$1$3;-><init>(Le8/q;I)V

    .line 575
    .line 576
    .line 577
    const v3, 0x450088c2

    .line 578
    .line 579
    .line 580
    invoke-static {v7, v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 581
    move-result-object v2

    .line 582
    .line 583
    const/16 v3, 0x38

    .line 584
    .line 585
    .line 586
    invoke-static {v1, v2, v7, v3}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 587
    :goto_6
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/AppBarKt$TopAppBar$1;->a(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
