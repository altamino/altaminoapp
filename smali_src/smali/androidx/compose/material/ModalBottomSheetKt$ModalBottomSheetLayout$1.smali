.class final Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ModalBottomSheetKt;->a(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;Landroidx/compose/ui/graphics/Shape;FJJJLe8/p;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModalBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModalBottomSheet.kt\nandroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,479:1\n25#2:480\n460#2,13:506\n473#2,3:520\n50#2:525\n49#2:526\n36#2:533\n1057#3,6:481\n1057#3,6:527\n1057#3,6:534\n67#4,6:487\n73#4:519\n77#4:524\n75#5:493\n76#5,11:495\n89#5:523\n76#6:494\n*S KotlinDebug\n*F\n+ 1 ModalBottomSheet.kt\nandroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1\n*L\n328#1:480\n329#1:506,13\n329#1:520,3\n345#1:525\n345#1:526\n356#1:533\n328#1:481,6\n345#1:527,6\n356#1:534,6\n329#1:487,6\n329#1:519\n329#1:524\n329#1:493\n329#1:495,11\n329#1:523\n329#1:494\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Le8/p;
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

.field final synthetic $scope:Lkotlinx/coroutines/o0;

.field final synthetic $scrimColor:J

.field final synthetic $sheetBackgroundColor:J

.field final synthetic $sheetContent:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sheetContentColor:J

.field final synthetic $sheetElevation:F

.field final synthetic $sheetShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $sheetState:Landroidx/compose/material/ModalBottomSheetState;


# direct methods
.method constructor <init>(Landroidx/compose/material/ModalBottomSheetState;ILandroidx/compose/ui/graphics/Shape;JJFLe8/p;JLkotlinx/coroutines/o0;Le8/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/ModalBottomSheetState;",
            "I",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;J",
            "Lkotlinx/coroutines/o0;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    iput p2, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$$dirty:I

    iput-object p3, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetShape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p4, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetBackgroundColor:J

    iput-wide p6, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetContentColor:J

    iput p8, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetElevation:F

    iput-object p9, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$content:Le8/p;

    iput-wide p10, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$scrimColor:J

    iput-object p12, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$scope:Lkotlinx/coroutines/o0;

    iput-object p13, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetContent:Le8/q;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 20
    .param p1    # Landroidx/compose/foundation/layout/BoxWithConstraintsScope;
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
    move-object/from16 v10, p2

    .line 7
    .line 8
    const-string v2, "$this$BoxWithConstraints"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    and-int/lit8 v2, p3, 0xe

    .line 14
    const/4 v7, 0x2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    const/4 v2, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v7

    .line 26
    .line 27
    :goto_0
    or-int v2, p3, v2

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_1
    move/from16 v2, p3

    .line 31
    .line 32
    :goto_1
    and-int/lit8 v2, v2, 0x5b

    .line 33
    .line 34
    const/16 v3, 0x12

    .line 35
    .line 36
    if-ne v2, v3, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 47
    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->b()J

    .line 52
    move-result-wide v1

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 56
    move-result v1

    .line 57
    int-to-float v8, v1

    .line 58
    .line 59
    .line 60
    const v1, -0x1d58f75c

    .line 61
    .line 62
    .line 63
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    const/4 v11, 0x0

    .line 75
    .line 76
    if-ne v1, v2, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-static {v11, v11, v7, v11}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 87
    move-object v12, v1

    .line 88
    .line 89
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 90
    .line 91
    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 92
    const/4 v14, 0x0

    .line 93
    const/4 v15, 0x1

    .line 94
    .line 95
    .line 96
    invoke-static {v13, v14, v15, v11}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    iget-object v2, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$content:Le8/p;

    .line 100
    .line 101
    iget v3, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$$dirty:I

    .line 102
    .line 103
    iget-wide v4, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$scrimColor:J

    .line 104
    .line 105
    iget-object v6, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    .line 106
    .line 107
    iget-object v7, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$scope:Lkotlinx/coroutines/o0;

    .line 108
    .line 109
    .line 110
    const v11, 0x2bb5b5d7

    .line 111
    .line 112
    .line 113
    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 114
    .line 115
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 119
    move-result-object v11

    .line 120
    const/4 v14, 0x0

    .line 121
    .line 122
    .line 123
    invoke-static {v11, v14, v10, v14}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 124
    move-result-object v11

    .line 125
    .line 126
    .line 127
    const v15, -0x4ee9b9da

    .line 128
    .line 129
    .line 130
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 134
    move-result-object v15

    .line 135
    .line 136
    .line 137
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 138
    move-result-object v15

    .line 139
    .line 140
    check-cast v15, Landroidx/compose/ui/unit/Density;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 144
    move-result-object v14

    .line 145
    .line 146
    .line 147
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 148
    move-result-object v14

    .line 149
    .line 150
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 151
    .line 152
    move-object/from16 v16, v12

    .line 153
    .line 154
    .line 155
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 156
    move-result-object v12

    .line 157
    .line 158
    .line 159
    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 160
    move-result-object v12

    .line 161
    .line 162
    check-cast v12, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 163
    .line 164
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 165
    .line 166
    move-object/from16 v18, v9

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 170
    move-result-object v9

    .line 171
    .line 172
    .line 173
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    move/from16 v19, v8

    .line 177
    .line 178
    .line 179
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 180
    move-result-object v8

    .line 181
    .line 182
    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    .line 183
    .line 184
    if-nez v8, :cond_5

    .line 185
    .line 186
    .line 187
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 188
    .line 189
    .line 190
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 191
    .line 192
    .line 193
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 194
    move-result v8

    .line 195
    .line 196
    if-eqz v8, :cond_6

    .line 197
    .line 198
    .line 199
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 200
    goto :goto_3

    .line 201
    .line 202
    .line 203
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 204
    .line 205
    .line 206
    :goto_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 207
    .line 208
    .line 209
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 210
    move-result-object v8

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 214
    move-result-object v9

    .line 215
    .line 216
    .line 217
    invoke-static {v8, v11, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 221
    move-result-object v9

    .line 222
    .line 223
    .line 224
    invoke-static {v8, v15, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 228
    move-result-object v9

    .line 229
    .line 230
    .line 231
    invoke-static {v8, v14, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 235
    move-result-object v9

    .line 236
    .line 237
    .line 238
    invoke-static {v8, v12, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 239
    .line 240
    .line 241
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 242
    .line 243
    .line 244
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 245
    move-result-object v8

    .line 246
    .line 247
    .line 248
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 249
    move-result-object v8

    .line 250
    const/4 v9, 0x0

    .line 251
    .line 252
    .line 253
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    move-result-object v11

    .line 255
    .line 256
    .line 257
    invoke-interface {v1, v8, v10, v11}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    const v1, 0x7ab4aae9

    .line 261
    .line 262
    .line 263
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 264
    .line 265
    .line 266
    const v1, -0x7f65a980

    .line 267
    .line 268
    .line 269
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 270
    .line 271
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 272
    .line 273
    .line 274
    const v1, -0x18011430

    .line 275
    .line 276
    .line 277
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 278
    .line 279
    shr-int/lit8 v1, v3, 0x18

    .line 280
    .line 281
    and-int/lit8 v1, v1, 0xe

    .line 282
    .line 283
    .line 284
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    move-result-object v1

    .line 286
    .line 287
    .line 288
    invoke-interface {v2, v10, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    new-instance v8, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$1$1;

    .line 291
    .line 292
    .line 293
    invoke-direct {v8, v6, v7}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$1$1;-><init>(Landroidx/compose/material/ModalBottomSheetState;Lkotlinx/coroutines/o0;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6}, Landroidx/compose/material/SwipeableState;->v()Ljava/lang/Object;

    .line 297
    move-result-object v1

    .line 298
    .line 299
    sget-object v2, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    .line 300
    .line 301
    if-eq v1, v2, :cond_7

    .line 302
    const/4 v6, 0x1

    .line 303
    goto :goto_4

    .line 304
    :cond_7
    const/4 v6, 0x0

    .line 305
    .line 306
    :goto_4
    shr-int/lit8 v1, v3, 0x15

    .line 307
    .line 308
    and-int/lit8 v7, v1, 0xe

    .line 309
    move-wide v1, v4

    .line 310
    move-object v3, v8

    .line 311
    move v4, v6

    .line 312
    .line 313
    move-object/from16 v5, p2

    .line 314
    move v6, v7

    .line 315
    .line 316
    .line 317
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/ModalBottomSheetKt;->d(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V

    .line 318
    .line 319
    .line 320
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 321
    .line 322
    .line 323
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 324
    .line 325
    .line 326
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 327
    .line 328
    .line 329
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 330
    .line 331
    .line 332
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 333
    .line 334
    .line 335
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 336
    const/4 v1, 0x0

    .line 337
    const/4 v2, 0x0

    .line 338
    const/4 v3, 0x1

    .line 339
    .line 340
    .line 341
    invoke-static {v13, v2, v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 342
    move-result-object v2

    .line 343
    .line 344
    iget-object v3, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3}, Landroidx/compose/material/ModalBottomSheetState;->L()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 348
    move-result-object v3

    .line 349
    const/4 v4, 0x2

    .line 350
    .line 351
    .line 352
    invoke-static {v2, v3, v1, v4, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 353
    move-result-object v2

    .line 354
    .line 355
    iget-object v1, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    .line 356
    .line 357
    .line 358
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 359
    move-result-object v3

    .line 360
    .line 361
    iget-object v4, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    .line 362
    .line 363
    .line 364
    const v5, 0x1e7b2b64

    .line 365
    .line 366
    .line 367
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 368
    .line 369
    .line 370
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 371
    move-result v1

    .line 372
    .line 373
    .line 374
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 375
    move-result v3

    .line 376
    or-int/2addr v1, v3

    .line 377
    .line 378
    .line 379
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 380
    move-result-object v3

    .line 381
    .line 382
    if-nez v1, :cond_9

    .line 383
    .line 384
    .line 385
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 386
    move-result-object v1

    .line 387
    .line 388
    if-ne v3, v1, :cond_8

    .line 389
    goto :goto_5

    .line 390
    .line 391
    :cond_8
    move/from16 v1, v19

    .line 392
    goto :goto_6

    .line 393
    .line 394
    :cond_9
    :goto_5
    new-instance v3, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1;

    .line 395
    .line 396
    move/from16 v1, v19

    .line 397
    .line 398
    .line 399
    invoke-direct {v3, v4, v1}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1;-><init>(Landroidx/compose/material/ModalBottomSheetState;F)V

    .line 400
    .line 401
    .line 402
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    :goto_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 406
    .line 407
    check-cast v3, Le8/l;

    .line 408
    .line 409
    .line 410
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 411
    move-result-object v2

    .line 412
    .line 413
    iget-object v3, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    .line 414
    .line 415
    move-object/from16 v4, v16

    .line 416
    .line 417
    .line 418
    invoke-static {v2, v3, v1, v4}, Landroidx/compose/material/ModalBottomSheetKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;FLandroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;

    .line 419
    move-result-object v1

    .line 420
    .line 421
    .line 422
    const v2, 0x44faf204

    .line 423
    .line 424
    .line 425
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 426
    .line 427
    .line 428
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 429
    move-result v2

    .line 430
    .line 431
    .line 432
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 433
    move-result-object v3

    .line 434
    .line 435
    if-nez v2, :cond_a

    .line 436
    .line 437
    .line 438
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 439
    move-result-object v2

    .line 440
    .line 441
    if-ne v3, v2, :cond_b

    .line 442
    .line 443
    :cond_a
    new-instance v3, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$3$1;

    .line 444
    .line 445
    .line 446
    invoke-direct {v3, v4}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 447
    .line 448
    .line 449
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 453
    .line 454
    check-cast v3, Le8/l;

    .line 455
    .line 456
    .line 457
    invoke-static {v1, v3}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 458
    move-result-object v1

    .line 459
    .line 460
    new-instance v2, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$4;

    .line 461
    .line 462
    iget-object v3, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    .line 463
    .line 464
    iget-object v4, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$scope:Lkotlinx/coroutines/o0;

    .line 465
    .line 466
    .line 467
    invoke-direct {v2, v3, v4}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$4;-><init>(Landroidx/compose/material/ModalBottomSheetState;Lkotlinx/coroutines/o0;)V

    .line 468
    const/4 v3, 0x0

    .line 469
    const/4 v4, 0x1

    .line 470
    const/4 v5, 0x0

    .line 471
    .line 472
    .line 473
    invoke-static {v1, v5, v2, v4, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 474
    move-result-object v1

    .line 475
    .line 476
    iget-object v2, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetShape:Landroidx/compose/ui/graphics/Shape;

    .line 477
    .line 478
    iget-wide v5, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetBackgroundColor:J

    .line 479
    .line 480
    iget-wide v7, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetContentColor:J

    .line 481
    const/4 v9, 0x0

    .line 482
    .line 483
    iget v11, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetElevation:F

    .line 484
    .line 485
    new-instance v3, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$5;

    .line 486
    .line 487
    iget-object v12, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$sheetContent:Le8/q;

    .line 488
    .line 489
    iget v13, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$$dirty:I

    .line 490
    .line 491
    .line 492
    invoke-direct {v3, v12, v13}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$5;-><init>(Le8/q;I)V

    .line 493
    .line 494
    .line 495
    const v12, -0x6ae6c426

    .line 496
    .line 497
    .line 498
    invoke-static {v10, v12, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 499
    move-result-object v12

    .line 500
    .line 501
    iget v3, v0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->$$dirty:I

    .line 502
    .line 503
    shr-int/lit8 v4, v3, 0x6

    .line 504
    .line 505
    and-int/lit8 v4, v4, 0x70

    .line 506
    .line 507
    const/high16 v13, 0x180000

    .line 508
    or-int/2addr v4, v13

    .line 509
    .line 510
    shr-int/lit8 v13, v3, 0x9

    .line 511
    .line 512
    and-int/lit16 v13, v13, 0x380

    .line 513
    or-int/2addr v4, v13

    .line 514
    .line 515
    shr-int/lit8 v13, v3, 0x9

    .line 516
    .line 517
    and-int/lit16 v13, v13, 0x1c00

    .line 518
    or-int/2addr v4, v13

    .line 519
    .line 520
    shl-int/lit8 v3, v3, 0x3

    .line 521
    .line 522
    const/high16 v13, 0x70000

    .line 523
    and-int/2addr v3, v13

    .line 524
    .line 525
    or-int v13, v4, v3

    .line 526
    .line 527
    const/16 v14, 0x10

    .line 528
    move-wide v3, v5

    .line 529
    move-wide v5, v7

    .line 530
    move-object v7, v9

    .line 531
    move v8, v11

    .line 532
    move-object v9, v12

    .line 533
    .line 534
    move-object/from16 v10, p2

    .line 535
    move v11, v13

    .line 536
    move v12, v14

    .line 537
    .line 538
    .line 539
    invoke-static/range {v1 .. v12}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 540
    :goto_7
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->a(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
